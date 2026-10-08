document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("bookingForm");

    const slots = document.querySelectorAll(".slot");


    /*
     * SLOT SELECTION
     */

    slots.forEach(slot => {

        slot.addEventListener("click", () => {

            slots.forEach(item => {
                item.classList.remove("active");
            });

            slot.classList.add("active");

        });

    });


    /*
     * BOOKING
     */

    form.addEventListener("submit", event => {

        event.preventDefault();


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
            document.getElementById("location").value;


        if (!date || !harvester || !acres ||
            !trips || !hours || !location) {

            alert("Please fill all required fields.");

            return;
        }


        const selectedSlot =
            document.querySelector(".slot.active");


        const slot =
            selectedSlot
                ? selectedSlot.dataset.slot
                : "";


        const booking = {

            id:
                "BK-" +
                Date.now(),

            date,

            harvester,

            acres,

            trips,

            hours,

            location,

            slot,

            createdAt:
                new Date().toISOString()

        };


        /*
         * Save temporarily in browser.
         *
         * Later this will be replaced
         * with Spring Boot REST API.
         */

        const bookings =
            JSON.parse(
                localStorage.getItem("bookings") || "[]"
            );


        bookings.push(booking);


        localStorage.setItem(
            "bookings",
            JSON.stringify(bookings)
        );


        alert(
            `Booking confirmed!\n\n` +
            `Booking ID: ${booking.id}\n` +
            `Harvester: ${harvester}\n` +
            `Date: ${date}\n` +
            `Slot: ${slot}`
        );


        form.reset();


        slots.forEach(item => {
            item.classList.remove("active");
        });

        slots[0].classList.add("active");

    });

});
