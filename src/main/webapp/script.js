```javascript
// ==========================================
// HARVESTER BOOKING APPLICATION
// ==========================================


// ------------------------------------------
// DOM ELEMENTS
// ------------------------------------------

const bookingForm = document.getElementById("bookingForm");

const bookingList = document.getElementById("bookingList");

const loginModal = document.getElementById("loginModal");

const otpSection = document.getElementById("otpSection");


// ------------------------------------------
// SET MINIMUM BOOKING DATE
// ------------------------------------------

const bookingDate = document.getElementById("bookingDate");

const today = new Date();

const yyyy = today.getFullYear();

const mm = String(today.getMonth() + 1).padStart(2, "0");

const dd = String(today.getDate()).padStart(2, "0");

bookingDate.min = `${yyyy}-${mm}-${dd}`;


// ------------------------------------------
// BOOKING FORM
// ------------------------------------------

bookingForm.addEventListener("submit", function (event) {

    event.preventDefault();


    const farmerName =
        document.getElementById("farmerName").value.trim();

    const mobile =
        document.getElementById("mobile").value.trim();

    const date =
        document.getElementById("bookingDate").value;

    const harvester =
        document.getElementById("harvester").value;

    const acres =
        document.getElementById("acres").value;

    const trips =
        document.getElementById("trips").value;

    const hours =
        document.getElementById("hours").value;

    const location =
        document.getElementById("location").value.trim();

    const notes =
        document.getElementById("notes").value.trim();


    const selectedSlot =
        document.querySelector(
            'input[name="slot"]:checked'
        );


    // Mobile validation

    if (!/^[0-9]{10}$/.test(mobile)) {

        alert("Please enter a valid 10 digit mobile number.");

        return;
    }


    // Slot validation

    if (!selectedSlot) {

        alert("Please select a preferred slot.");

        return;
    }


    const booking = {

        id: "BK" + Date.now(),

        farmerName,

        mobile,

        date,

        harvester,

        acres,

        trips,

        hours,

        slot: selectedSlot.value,

        location,

        notes,

        status: "Confirmed"

    };


    saveBooking(booking);

    displayBookings();


    alert(
        `Booking confirmed successfully!\n\nBooking ID: ${booking.id}`
    );


    bookingForm.reset();

});


// ------------------------------------------
// SAVE BOOKING
// ------------------------------------------

function saveBooking(booking) {

    const bookings =
        JSON.parse(
            localStorage.getItem("harvesterBookings")
        ) || [];


    bookings.push(booking);


    localStorage.setItem(
        "harvesterBookings",
        JSON.stringify(bookings)
    );

}


// ------------------------------------------
// DISPLAY BOOKINGS
// ------------------------------------------

function displayBookings() {

    const bookings =
        JSON.parse(
            localStorage.getItem("harvesterBookings")
        ) || [];


    if (bookings.length === 0) {

        bookingList.innerHTML = `

            <div class="empty-bookings">

                <i class="fa-solid fa-calendar-xmark"></i>

                <h3>No bookings yet</h3>

                <p>
                    Your confirmed bookings will appear here.
                </p>

                <button
                    class="primary-btn"
                    onclick="scrollToBooking()">

                    Book Your First Slot

                </button>

            </div>

        `;

        return;
    }


    bookingList.innerHTML = "";


    bookings
        .slice()
        .reverse()
        .forEach(booking => {

            const element =
                document.createElement("div");


            element.className =
                "booking-item";


            element.innerHTML = `

                <div>

                    <h3>
                        ${escapeHtml(booking.harvester)}
                    </h3>

                    <p>
                        <strong>Booking ID:</strong>
                        ${escapeHtml(booking.id)}
                    </p>

                    <p>
                        <strong>Date:</strong>
                        ${escapeHtml(booking.date)}
                    </p>

                    <p>
                        <strong>Slot:</strong>
                        ${escapeHtml(booking.slot)}
                    </p>

                    <p>
                        <strong>Acres:</strong>
                        ${escapeHtml(booking.acres)}
                        &nbsp; | &nbsp;

                        <strong>Trips:</strong>
                        ${escapeHtml(booking.trips)}
                        &nbsp; | &nbsp;

                        <strong>Hours:</strong>
                        ${escapeHtml(booking.hours)}
                    </p>

                    <p>
                        <strong>Location:</strong>
                        ${escapeHtml(booking.location)}
                    </p>

                </div>


                <span class="booking-status">

                    ${escapeHtml(booking.status)}

                </span>

            `;


            bookingList.appendChild(element);

        });

}


// ------------------------------------------
// LOGIN
// ------------------------------------------

function openLogin() {

    loginModal.classList.add("show");

}


function closeLogin() {

    loginModal.classList.remove("show");

}


// ------------------------------------------
// SEND OTP
// ------------------------------------------

function sendOtp() {

    const mobile =
        document.getElementById("loginMobile")
            .value.trim();


    if (!/^[0-9]{10}$/.test(mobile)) {

        alert(
            "Please enter a valid 10 digit mobile number."
        );

        return;
    }


    otpSection.style.display = "block";


    alert(
        "Demo OTP sent successfully.\n\nUse 123456"
    );

}


// ------------------------------------------
// VERIFY OTP
// ------------------------------------------

function verifyOtp() {

    const otp =
        document.getElementById("otp").value.trim();


    if (otp === "123456") {

        alert("Login successful!");

        closeLogin();

    } else {

        alert("Invalid OTP.");

    }

}


// ------------------------------------------
// SCROLL FUNCTIONS
// ------------------------------------------

function scrollToBooking() {

    document
        .getElementById("booking")
        .scrollIntoView({
            behavior: "smooth"
        });

}


function scrollToBookings() {

    document
        .getElementById("bookings")
        .scrollIntoView({
            behavior: "smooth"
        });

}


// ------------------------------------------
// ESCAPE HTML
// ------------------------------------------

function escapeHtml(value) {

    const div =
        document.createElement("div");

    div.textContent = value;

    return div.innerHTML;

}


// ------------------------------------------
// LOAD BOOKINGS
// ------------------------------------------

document.addEventListener(
    "DOMContentLoaded",
    function () {

        displayBookings();

    }
);


// ------------------------------------------
// CLOSE MODAL WHEN CLICKING OUTSIDE
// ------------------------------------------

loginModal.addEventListener(
    "click",
    function (event) {

        if (event.target === loginModal) {

            closeLogin();

        }

    }
);
```
