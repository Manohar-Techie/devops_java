document.addEventListener("DOMContentLoaded", function () {
    const bookingForm = document.getElementById("bookingForm");
    const bookingMessage = document.getElementById("booking-message");
    const slotButtons = Array.from(document.querySelectorAll(".slot-button"));
    const serviceSelect = document.getElementById("serviceType");
    const acresInput = document.getElementById("acres");
    const priceEstimate = document.getElementById("price-estimate");
    const rates = {
        harvesting: 1800,
        "field-preparation": 1200,
        transport: 0
    };

    function localDateString(date) {
        const offset = date.getTimezoneOffset() * 60000;
        return new Date(date.getTime() - offset).toISOString().slice(0, 10);
    }

    const bookingDate = document.getElementById("bookingDate");
    bookingDate.min = localDateString(new Date());

    function updateEstimate() {
        const rate = rates[serviceSelect.value];
        const acres = Number(acresInput.value);
        if (!rate) {
            priceEstimate.innerHTML = 'Request a quote';
            return;
        }

        const total = Number.isFinite(acres) && acres > 0 ? rate * acres : rate;
        priceEstimate.innerHTML = "₹" + total.toLocaleString("en-IN") + " <small>" +
            (acres > 0 ? "estimated total" : "/ acre") + "</small>";
    }

    serviceSelect.addEventListener("change", updateEstimate);
    acresInput.addEventListener("input", updateEstimate);

    slotButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            slotButtons.forEach(function (slot) {
                const selected = slot === button;
                slot.classList.toggle("is-selected", selected);
                slot.setAttribute("aria-pressed", String(selected));
            });
        });
    });

    bookingForm.addEventListener("submit", function (event) {
        event.preventDefault();
        bookingMessage.classList.remove("is-error");

        const selectedSlot = document.querySelector(".slot-button[aria-pressed='true']");
        if (!selectedSlot) {
            bookingMessage.textContent = "Please select a time slot before continuing.";
            bookingMessage.classList.add("is-error");
            return;
        }

        const booking = {
            id: "MH-" + Date.now().toString(36).toUpperCase(),
            name: document.getElementById("farmerName").value.trim(),
            phone: document.getElementById("phone").value.trim(),
            location: document.getElementById("location").value.trim(),
            service: serviceSelect.value,
            date: bookingDate.value,
            acres: Number(acresInput.value),
            harvester: document.getElementById("harvester").value,
            hours: document.getElementById("hours").value,
            slot: selectedSlot.dataset.slot,
            notes: document.getElementById("notes").value.trim(),
            createdAt: new Date().toISOString()
        };

        try {
            const storedBookings = localStorage.getItem("manaHarvesterBookings");
            const bookings = storedBookings ? JSON.parse(storedBookings) : [];
            if (!Array.isArray(bookings)) {
                throw new Error("Saved booking data is not a list.");
            }
            bookings.push(booking);
            localStorage.setItem("manaHarvesterBookings", JSON.stringify(bookings));
        } catch (error) {
            console.error("Could not save the booking in this browser.", error);
            bookingMessage.textContent = "We couldn't save this request in your browser. Please check your browser storage settings and try again.";
            bookingMessage.classList.add("is-error");
            return;
        }

        bookingMessage.textContent = "Request " + booking.id + " saved on this device. This demo does not contact an operator or reserve a live slot.";
        bookingForm.reset();
        bookingDate.value = bookingDate.min;
        slotButtons.forEach(function (slot, index) {
            const selected = index === 0;
            slot.classList.toggle("is-selected", selected);
            slot.setAttribute("aria-pressed", String(selected));
        });
        updateEstimate();
    });

    const slider = document.getElementById("story-slider");
    const slides = Array.from(slider.children);
    const dotsContainer = document.getElementById("slider-dots");
    let activeSlide = 0;

    function setActiveSlide(index) {
        activeSlide = (index + slides.length) % slides.length;
        slides[activeSlide].scrollIntoView({ behavior: "smooth", block: "nearest", inline: "start" });
        Array.from(dotsContainer.children).forEach(function (dot, dotIndex) {
            dot.setAttribute("aria-current", String(dotIndex === activeSlide));
        });
    }

    slides.forEach(function (_, index) {
        const dot = document.createElement("button");
        dot.type = "button";
        dot.className = "slider-dot";
        dot.setAttribute("aria-label", "Show field story " + (index + 1));
        dot.setAttribute("aria-current", String(index === 0));
        dot.addEventListener("click", function () {
            setActiveSlide(index);
        });
        dotsContainer.appendChild(dot);
    });

    document.getElementById("slide-prev").addEventListener("click", function () {
        setActiveSlide(activeSlide - 1);
    });
    document.getElementById("slide-next").addEventListener("click", function () {
        setActiveSlide(activeSlide + 1);
    });

    const menuToggle = document.querySelector(".menu-toggle");
    const siteNav = document.getElementById("site-nav");
    menuToggle.addEventListener("click", function () {
        const isOpen = menuToggle.getAttribute("aria-expanded") !== "true";
        menuToggle.setAttribute("aria-expanded", String(isOpen));
        menuToggle.setAttribute("aria-label", isOpen ? "Close navigation" : "Open navigation");
        siteNav.classList.toggle("is-open", isOpen);
    });
    siteNav.querySelectorAll("a").forEach(function (link) {
        link.addEventListener("click", function () {
            menuToggle.setAttribute("aria-expanded", "false");
            menuToggle.setAttribute("aria-label", "Open navigation");
            siteNav.classList.remove("is-open");
        });
    });

    const weatherForm = document.getElementById("weatherForm");
    const weatherLocation = document.getElementById("weatherLocation");
    const weatherStatus = document.getElementById("weather-status");
    const weatherCodes = {
        0: ["Clear sky", "☀"],
        1: ["Mainly clear", "🌤"],
        2: ["Partly cloudy", "⛅"],
        3: ["Overcast", "☁"],
        45: ["Foggy", "〰"],
        48: ["Rime fog", "〰"],
        51: ["Light drizzle", "☂"],
        53: ["Drizzle", "☂"],
        55: ["Heavy drizzle", "☂"],
        61: ["Light rain", "☂"],
        63: ["Rain", "☂"],
        65: ["Heavy rain", "☂"],
        71: ["Light snow", "❄"],
        73: ["Snow", "❄"],
        75: ["Heavy snow", "❄"],
        80: ["Rain showers", "☂"],
        81: ["Rain showers", "☂"],
        82: ["Heavy showers", "☂"],
        95: ["Thunderstorm", "⛈"],
        96: ["Thunderstorm with hail", "⛈"],
        99: ["Thunderstorm with hail", "⛈"]
    };

    async function loadWeather(place) {
        weatherStatus.classList.remove("is-error");
        weatherStatus.textContent = "Looking up " + place + "…";

        try {
            const geocodingUrl = "https://geocoding-api.open-meteo.com/v1/search?name=" +
                encodeURIComponent(place) + "&count=1&language=en&format=json";
            const geocodingResponse = await fetch(geocodingUrl);
            if (!geocodingResponse.ok) {
                throw new Error("Location search returned HTTP " + geocodingResponse.status);
            }
            const geocoding = await geocodingResponse.json();
            const location = geocoding.results && geocoding.results[0];
            if (!location) {
                throw new Error("No matching town or village was found.");
            }

            const forecastUrl = "https://api.open-meteo.com/v1/forecast?latitude=" +
                encodeURIComponent(location.latitude) + "&longitude=" +
                encodeURIComponent(location.longitude) +
                "&current=temperature_2m,relative_humidity_2m,weather_code,wind_speed_10m" +
                "&daily=precipitation_probability_max&forecast_days=1&timezone=auto";
            const forecastResponse = await fetch(forecastUrl);
            if (!forecastResponse.ok) {
                throw new Error("Forecast service returned HTTP " + forecastResponse.status);
            }
            const forecast = await forecastResponse.json();
            if (!forecast.current) {
                throw new Error("The forecast service returned no current conditions.");
            }

            const current = forecast.current;
            const weather = weatherCodes[current.weather_code] || ["Current conditions", "☁"];
            document.getElementById("weather-place").textContent =
                location.name + (location.country ? ", " + location.country : "");
            document.getElementById("weather-temperature").textContent =
                Math.round(current.temperature_2m) + "°";
            document.getElementById("weather-condition").textContent = weather[0];
            document.getElementById("weather-icon").textContent = weather[1];
            document.getElementById("weather-humidity").textContent =
                Math.round(current.relative_humidity_2m) + "%";
            document.getElementById("weather-wind").textContent =
                Math.round(current.wind_speed_10m) + " km/h";
            const rainChance = forecast.daily &&
                forecast.daily.precipitation_probability_max &&
                forecast.daily.precipitation_probability_max[0];
            document.getElementById("weather-rain").textContent =
                (rainChance === null || rainChance === undefined ? "—" : Math.round(rainChance) + "%");
            weatherStatus.textContent = "Current local conditions for " + location.name + ".";
        } catch (error) {
            console.error("Could not load local weather.", error);
            weatherStatus.textContent = error.message === "Failed to fetch"
                ? "Weather could not be reached. Check your connection and try again."
                : error.message;
            weatherStatus.classList.add("is-error");
        }
    }

    weatherForm.addEventListener("submit", function (event) {
        event.preventDefault();
        const place = weatherLocation.value.trim();
        if (place) {
            loadWeather(place);
        }
    });
    loadWeather(weatherLocation.value);
});
