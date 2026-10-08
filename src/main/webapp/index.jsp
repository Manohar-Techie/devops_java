```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Mana Harvester - Slot Booking</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<header class="header">
    <div class="container header-content">

        <div class="logo">
            <i class="fa-solid fa-tractor"></i>
            <span>Mana <strong>Harvester</strong></span>
        </div>

        <nav>
            <a href="#home">Home</a>
            <a href="#booking">Book Slot</a>
            <a href="#bookings">My Bookings</a>
            <a href="#updates">Updates</a>
        </nav>

        <button class="login-btn" onclick="openLogin()">
            <i class="fa-solid fa-user"></i>
            Login
        </button>

    </div>
</header>


<main>

<!-- HERO -->

<section class="hero" id="home">

    <div class="hero-content">

        <span class="badge">
            <i class="fa-solid fa-wheat-awn"></i>
            Easy Harvesting
        </span>

        <h1>
            Book Your Harvester
            <span>Slot Easily</span>
        </h1>

        <p>
            Select your date, harvester, number of trips and acres.
            Get your harvesting slot without waiting.
        </p>

        <div class="hero-buttons">

            <button class="primary-btn"
                    onclick="scrollToBooking()">
                <i class="fa-solid fa-calendar-check"></i>
                Book Harvester
            </button>

            <button class="secondary-btn"
                    onclick="scrollToBookings()">
                <i class="fa-solid fa-clock-rotate-left"></i>
                My Bookings
            </button>

        </div>

    </div>

    <div class="hero-image">
        <i class="fa-solid fa-tractor"></i>
    </div>

</section>


<!-- QUICK STATS -->

<section class="stats container">

    <div class="stat-card">
        <i class="fa-solid fa-tractor"></i>
        <div>
            <h3>8</h3>
            <p>Harvesters</p>
        </div>
    </div>

    <div class="stat-card">
        <i class="fa-solid fa-calendar-check"></i>
        <div>
            <h3>24</h3>
            <p>Available Slots</p>
        </div>
    </div>

    <div class="stat-card">
        <i class="fa-solid fa-users"></i>
        <div>
            <h3>320+</h3>
            <p>Farmers</p>
        </div>
    </div>

    <div class="stat-card">
        <i class="fa-solid fa-clock"></i>
        <div>
            <h3>24/7</h3>
            <p>Booking Support</p>
        </div>
    </div>

</section>


<!-- BOOKING -->

<section class="section" id="booking">

    <div class="container">

        <div class="section-heading">
            <span>BOOK YOUR SLOT</span>
            <h2>Harvester Slot Booking</h2>
            <p>
                Enter your field details and select an available slot.
            </p>
        </div>


        <div class="booking-layout">

            <!-- FORM -->

            <div class="booking-card">

                <h3>
                    <i class="fa-solid fa-calendar-plus"></i>
                    Booking Details
                </h3>

                <form id="bookingForm">

                    <div class="form-row">

                        <div class="form-group">
                            <label>Farmer Name</label>
                            <input
                                type="text"
                                id="farmerName"
                                placeholder="Enter your name"
                                required>
                        </div>

                        <div class="form-group">
                            <label>Mobile Number</label>
                            <input
                                type="tel"
                                id="mobile"
                                placeholder="10 digit mobile number"
                                maxlength="10"
                                required>
                        </div>

                    </div>


                    <div class="form-row">

                        <div class="form-group">

                            <label>Select Date</label>

                            <input
                                type="date"
                                id="bookingDate"
                                required>

                        </div>


                        <div class="form-group">

                            <label>Harvester</label>

                            <select id="harvester" required>

                                <option value="">
                                    Select Harvester
                                </option>

                                <option value="Harvester 01">
                                    Harvester 01
                                </option>

                                <option value="Harvester 02">
                                    Harvester 02
                                </option>

                                <option value="Harvester 03">
                                    Harvester 03
                                </option>

                            </select>

                        </div>

                    </div>


                    <div class="form-row">

                        <div class="form-group">

                            <label>Number of Acres</label>

                            <input
                                type="number"
                                id="acres"
                                min="1"
                                placeholder="Example: 5"
                                required>

                        </div>


                        <div class="form-group">

                            <label>Number of Trips</label>

                            <input
                                type="number"
                                id="trips"
                                min="1"
                                placeholder="Example: 2"
                                required>

                        </div>

                    </div>


                    <div class="form-group">

                        <label>Estimated Hours</label>

                        <input
                            type="number"
                            id="hours"
                            min="1"
                            placeholder="Example: 6"
                            required>

                    </div>


                    <div class="form-group">

                        <label>Preferred Slot</label>

                        <div class="slots">

                            <label class="slot">
                                <input type="radio"
                                       name="slot"
                                       value="06:00 AM - 10:00 AM"
                                       required>
                                <span>06 AM - 10 AM</span>
                            </label>

                            <label class="slot">
                                <input type="radio"
                                       name="slot"
                                       value="10:00 AM - 02:00 PM">
                                <span>10 AM - 02 PM</span>
                            </label>

                            <label class="slot">
                                <input type="radio"
                                       name="slot"
                                       value="02:00 PM - 06:00 PM">
                                <span>02 PM - 06 PM</span>
                            </label>

                        </div>

                    </div>


                    <div class="form-group">

                        <label>Village / Location</label>

                        <input
                            type="text"
                            id="location"
                            placeholder="Enter village / field location"
                            required>

                    </div>


                    <div class="form-group">

                        <label>Additional Notes</label>

                        <textarea
                            id="notes"
                            rows="3"
                            placeholder="Any additional information...">
                        </textarea>

                    </div>


                    <button type="submit" class="book-btn">

                        <i class="fa-solid fa-check"></i>

                        Confirm Booking

                    </button>

                </form>

            </div>


            <!-- AVAILABILITY -->

            <div class="availability-card">

                <div class="availability-header">

                    <div>
                        <span>LIVE</span>
                        <h3>Available Slots</h3>
                    </div>

                    <i class="fa-solid fa-tractor"></i>

                </div>


                <div class="availability-item available">

                    <div class="time">
                        <strong>06:00 AM</strong>
                        <small>10:00 AM</small>
                    </div>

                    <div>
                        <strong>Harvester 01</strong>
                        <p>Available</p>
                    </div>

                    <span class="status available-status">
                        Available
                    </span>

                </div>


                <div class="availability-item available">

                    <div class="time">
                        <strong>10:00 AM</strong>
                        <small>02:00 PM</small>
                    </div>

                    <div>
                        <strong>Harvester 02</strong>
                        <p>Available</p>
                    </div>

                    <span class="status available-status">
                        Available
                    </span>

                </div>


                <div class="availability-item booked">

                    <div class="time">
                        <strong>02:00 PM</strong>
                        <small>06:00 PM</small>
                    </div>

                    <div>
                        <strong>Harvester 03</strong>
                        <p>Already booked</p>
                    </div>

                    <span class="status booked-status">
                        Booked
                    </span>

                </div>


                <div class="info-box">

                    <i class="fa-solid fa-circle-info"></i>

                    <p>
                        Slots are confirmed based on availability.
                        You will receive a booking confirmation after
                        successful submission.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- MY BOOKINGS -->

<section class="section bookings-section" id="bookings">

    <div class="container">

        <div class="section-heading">

            <span>MY BOOKINGS</span>

            <h2>Recent Bookings</h2>

            <p>
                Track your harvester bookings and their status.
            </p>

        </div>


        <div id="bookingList" class="booking-list">

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

        </div>

    </div>

</section>


<!-- UPDATES -->

<section class="section updates-section" id="updates">

    <div class="container">

        <div class="section-heading">

            <span>LATEST UPDATES</span>

            <h2>Farmer Updates</h2>

        </div>


        <div class="updates-grid">

            <div class="update-card">

                <div class="update-icon">
                    <i class="fa-solid fa-bullhorn"></i>
                </div>

                <div>

                    <span>Today</span>

                    <h3>Harvesting slots opened</h3>

                    <p>
                        New harvester slots are available for
                        the upcoming harvesting season.
                    </p>

                </div>

            </div>


            <div class="update-card">

                <div class="update-icon">
                    <i class="fa-solid fa-cloud-sun"></i>
                </div>

                <div>

                    <span>Yesterday</span>

                    <h3>Weather update</h3>

                    <p>
                        Farmers are advised to check weather
                        conditions before confirming slots.
                    </p>

                </div>

            </div>


            <div class="update-card">

                <div class="update-icon">
                    <i class="fa-solid fa-circle-check"></i>
                </div>

                <div>

                    <span>This week</span>

                    <h3>Booking system available</h3>

                    <p>
                        Farmers can now book harvesting slots
                        online.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>

</main>


<!-- LOGIN MODAL -->

<div class="modal" id="loginModal">

    <div class="modal-content">

        <button class="close-btn"
                onclick="closeLogin()">
            <i class="fa-solid fa-xmark"></i>
        </button>

        <div class="login-icon">
            <i class="fa-solid fa-mobile-screen"></i>
        </div>

        <h2>Farmer Login</h2>

        <p>
            Login using your mobile number.
        </p>

        <input
            type="tel"
            id="loginMobile"
            placeholder="Enter mobile number"
            maxlength="10">

        <button
            class="book-btn"
            onclick="sendOtp()">

            Send OTP

        </button>

        <div id="otpSection" class="otp-section">

            <input
                type="text"
                id="otp"
                placeholder="Enter OTP"
                maxlength="6">

            <button
                class="book-btn"
                onclick="verifyOtp()">

                Verify OTP

            </button>

        </div>

    </div>

</div>


<footer>

    <div class="container footer-content">

        <div class="logo">
            <i class="fa-solid fa-tractor"></i>
            Mana <strong>Harvester</strong>
        </div>

        <p>
            Making harvesting easier for every farmer.
        </p>

        <p>
            © 2026 Mana Harvester. All rights reserved.
        </p>

    </div>

</footer>


<script src="script.js"></script>

</body>
</html>
```
