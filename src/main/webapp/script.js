document.addEventListener("DOMContentLoaded", function () {

    const form =
        document.getElementById("bookingForm");

    const slots =
        document.querySelectorAll(".slot");


    /*
     * SET TODAY AS DEFAULT DATE
     */

    const dateInput =
        document.getElementById("bookingDate");

    if (dateInput) {

        const today =
            new Date().toISOString().split("T")[0];

        dateInput.min = today;

        dateInput.value = today;
    }


    /*
     * SLOT SELECTION
     */

    slots.forEach(function (slot) {

        slot.addEventListener("click", function () {

            slots.forEach(function (item) {

                item.classList.remove("active");

            });

            slot.classList.add("active");

        });

    });


    /*
     * BOOKING
     */

    form.addEventListener("submit", function (event) {

        event.preventDefault();


        const booking = {

            id:
                "BK-" + Date.now(),

            date:
                document.getElementById("bookingDate").value,

            harvester:
                document.getElementById("harvester").value,

            acres:
                document.getElementById("acres").value,

            trips:
                document.getElementById("trips").value,

            hours:
                document.getElementById("hours").value,

            location:
                document.getElementById("location").value,

            notes:
                document.getElementById("notes").value,

            slot:
                document
                    .querySelector(".slot.active")
                    ?.dataset.slot || ""

        };


        /*
         * Temporary local storage.
         *
         * Later replace this with:
         *
         * POST /api/bookings
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
            "Booking confirmed!\n\n" +
            "Booking ID: " + booking.id
        );


        form.reset();


        dateInput.value =
            new Date()
                .toISOString()
                .split("T")[0];


        slots.forEach(function (slot) {

            slot.classList.remove("active");

        });


        slots[0].classList.add("active");

    });

});
