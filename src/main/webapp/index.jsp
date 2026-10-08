<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:forward page="/harvester.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta http-equiv="Content-Type"
          content="text/html; charset=UTF-8">

    <title>Mana Harvester</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/styles.css">

</head>

<body>

<div class="app">

    <!-- =====================================================
         SIDEBAR
    ====================================================== -->

    <aside class="sidebar">

        <div class="brand">

            <div class="brand-logo">
                MH
            </div>

            <div>
                <h2>Mana Harvester</h2>
                <span>Smart Farming</span>
            </div>

        </div>


        <nav class="sidebar-nav">

            <a href="#" class="nav-link active">
                <span class="nav-icon">⌂</span>
                <span>Dashboard</span>
            </a>

            <a href="#booking" class="nav-link">
                <span class="nav-icon">+</span>
                <span>Book Harvester</span>
            </a>

            <a href="#history" class="nav-link">
                <span class="nav-icon">▣</span>
                <span>My Bookings</span>
            </a>

            <a href="#weather" class="nav-link">
                <span class="nav-icon">☁</span>
                <span>Weather</span>
            </a>

            <a href="#updates" class="nav-link">
                <span class="nav-icon">!</span>
                <span>Updates</span>
            </a>

        </nav>


        <div class="sidebar-user">

            <img
                src="images/farmer.jpg"
                alt="Farmer"
                class="avatar"
            >

            <div class="user-info">

                <strong>Manohar</strong>

                <span>Farmer</span>

            </div>

        </div>

    </aside>


    <!-- =====================================================
         MAIN
    ====================================================== -->

    <main class="main">

        <!-- TOP BAR -->

        <header class="topbar">

            <div>

                <span class="welcome-text">
                    Good morning
                </span>

                <h1>
                    Welcome back, Manohar
                </h1>

            </div>


            <div class="top-profile">

                <div class="notification">
                    !
                </div>

                <img
                    src="images/farmer.jpg"
                    alt="Manohar"
                    class="profile-photo"
                >

            </div>

        </header>


        <div class="dashboard">


            <!-- =================================================
                 HERO
            ================================================== -->

            <section class="hero">

                <div class="hero-content">

                    <span class="hero-label">
                        SMART FARMING
                    </span>

                    <h2>
                        Harvest smarter.<br>
                        Grow better.
                    </h2>

                    <p>
                        Book your harvester, track your slots
                        and stay updated with farming conditions.
                    </p>

                    <a href="#booking" class="hero-button">
                        Book a Harvester
                    </a>

                </div>


                <div class="hero-image">

                    <img
                        src="images/harvester.jpg"
                        alt="Harvester working in field"
                    >

                </div>

            </section>


            <!-- =================================================
                 STATS
            ================================================== -->

            <section class="stats-grid">

                <div class="stat-card">

                    <div class="stat-icon green">
                        B
                    </div>

                    <div>

                        <span>Total Bookings</span>

                        <strong>12</strong>

                    </div>

                </div>


                <div class="stat-card">

                    <div class="stat-icon orange">
                        H
                    </div>

                    <div>

                        <span>Upcoming</span>

                        <strong>2</strong>

                    </div>

                </div>


                <div class="stat-card">

                    <div class="stat-icon blue">
                        A
                    </div>

                    <div>

                        <span>Total Acres</span>

                        <strong>18.5</strong>

                    </div>

                </div>


                <div class="stat-card">

                    <div class="stat-icon purple">
                        T
                    </div>

                    <div>

                        <span>Hours Booked</span>

                        <strong>31</strong>

                    </div>

                </div>

            </section>


            <!-- =================================================
                 MAIN GRID
            ================================================== -->

            <section class="main-grid">


                <!-- ================= BOOKING ================= -->

                <section class="card booking-card"
                         id="booking">

                    <div class="card-header">

                        <div>

                            <span class="section-label">
                                QUICK BOOKING
                            </span>

                            <h2>
                                Book a Harvester
                            </h2>

                            <p>
                                Select your date, machine and
                                preferred time slot.
                            </p>

                        </div>

                    </div>


                    <form id="bookingForm">

                        <div class="form-grid">


                            <div class="form-field">

                                <label>
                                    Booking Date
                                </label>

                                <input
                                    type="date"
                                    id="bookingDate"
                                    required
                                >

                            </div>


                            <div class="form-field">

                                <label>
                                    Harvester
                                </label>

                                <select
                                    id="harvester"
                                    required
                                >

                                    <option value="">
                                        Select harvester
                                    </option>

                                    <option>
                                        Harvester 01
                                    </option>

                                    <option>
                                        Harvester 02
                                    </option>

                                    <option>
                                        Harvester 03
                                    </option>

                                </select>

                            </div>


                            <div class="form-field">

                                <label>
                                    Land Area
                                </label>

                                <div class="unit-input">

                                    <input
                                        type="number"
                                        id="acres"
                                        placeholder="Enter acres"
                                        min="0.5"
                                        step="0.5"
                                        required
                                    >

                                    <span>Acres</span>

                                </div>

                            </div>


                            <div class="form-field">

                                <label>
                                    Number of Trips
                                </label>

                                <input
                                    type="number"
                                    id="trips"
                                    value="1"
                                    min="1"
                                    required
                                >

                            </div>


                            <div class="form-field">

                                <label>
                                    Estimated Hours
                                </label>

                                <input
                                    type="number"
                                    id="hours"
                                    placeholder="Example: 4"
                                    min="1"
                                    required
                                >

                            </div>


                            <div class="form-field">

                                <label>
                                    Village / Location
                                </label>

                                <input
                                    type="text"
                                    id="location"
                                    placeholder="Enter village"
                                    required
                                >

                            </div>

                        </div>


                        <!-- SLOTS -->

                        <div class="slot-section">

                            <label>
                                Available Time Slots
                            </label>


                            <div class="slots">

                                <button
                                    type="button"
                                    class="slot active"
                                    data-slot="06:00 AM - 10:00 AM"
                                >

                                    <strong>
                                        06:00 AM
                                    </strong>

                                    <span>
                                        4 hours
                                    </span>

                                </button>


                                <button
                                    type="button"
                                    class="slot"
                                    data-slot="10:00 AM - 02:00 PM"
                                >

                                    <strong>
                                        10:00 AM
                                    </strong>

                                    <span>
                                        4 hours
                                    </span>

                                </button>


                                <button
                                    type="button"
                                    class="slot"
                                    data-slot="02:00 PM - 06:00 PM"
                                >

                                    <strong>
                                        02:00 PM
                                    </strong>

                                    <span>
                                        4 hours
                                    </span>

                                </button>

                            </div>

                        </div>


                        <div class="form-field">

                            <label>
                                Additional Notes
                            </label>

                            <textarea
                                id="notes"
                                placeholder="Any special requirements..."
                            ></textarea>

                        </div>


                        <button
                            type="submit"
                            class="primary-button"
                        >

                            Confirm Booking

                            <span>→</span>

                        </button>

                    </form>

                </section>


                <!-- ================= AVAILABILITY ================= -->

                <section class="card availability-card">

                    <div class="card-header">

                        <div>

                            <span class="section-label">
                                LIVE STATUS
                            </span>

                            <h2>
                                Harvester Availability
                            </h2>

                        </div>

                        <span class="live-status">
                            Live
                        </span>

                    </div>


                    <div class="machines">


                        <div class="machine">

                            <div class="machine-image">

                                <img
                                    src="images/harvester.jpg"
                                    alt="Harvester"
                                >

                            </div>

                            <div class="machine-info">

                                <strong>
                                    Harvester 01
                                </strong>

                                <span>
                                    John Deere
                                </span>

                            </div>

                            <span class="available">
                                Available
                            </span>

                        </div>


                        <div class="machine">

                            <div class="machine-image">

                                <img
                                    src="images/harvester.jpg"
                                    alt="Harvester"
                                >

                            </div>

                            <div class="machine-info">

                                <strong>
                                    Harvester 02
                                </strong>

                                <span>
                                    Kubota
                                </span>

                            </div>

                            <span class="booked">
                                Booked
                            </span>

                        </div>


                        <div class="machine">

                            <div class="machine-image">

                                <img
                                    src="images/harvester.jpg"
                                    alt="Harvester"
                                >

                            </div>

                            <div class="machine-info">

                                <strong>
                                    Harvester 03
                                </strong>

                                <span>
                                    Mahindra
                                </span>

                            </div>

                            <span class="available">
                                Available
                            </span>

                        </div>

                    </div>

                </section>


            </section>


            <!-- =================================================
                 WEATHER + VIDEO
            ================================================== -->

            <section class="media-grid">


                <!-- WEATHER -->

                <section class="weather-card"
                         id="weather">

                    <img
                        src="images/weather.jpg"
                        alt="Weather conditions"
                    >

                    <div class="weather-overlay">

                        <span>
                            TODAY'S WEATHER
                        </span>

                        <h2>
                            28°C
                        </h2>

                        <strong>
                            Partly Cloudy
                        </strong>

                        <p>
                            Hyderabad · Telangana
                        </p>

                        <div class="weather-details">

                            <span>
                                Humidity 64%
                            </span>

                            <span>
                                Wind 12 km/h
                            </span>

                        </div>

                    </div>

                </section>


                <!-- HARVESTER VIDEO -->

                <section class="video-card">

                    <div class="video-header">

                        <div>

                            <span class="section-label">
                                FIELD ACTIVITY
                            </span>

                            <h2>
                                Harvester in Action
                            </h2>

                        </div>

                    </div>


                    <video
                        class="harvester-video"
                        autoplay
                        muted
                        loop
                        playsinline
                        controls
                    >

                        <source
                            src="videos/harvester.mp4"
                            type="video/mp4"
                        >

                        Your browser does not support
                        video playback.

                    </video>

                </section>


            </section>


            <!-- =================================================
                 LOWER GRID
            ================================================== -->

            <section class="lower-grid">


                <!-- UPCOMING -->

                <section class="card"
                         id="history">

                    <div class="card-header">

                        <div>

                            <span class="section-label">
                                NEXT BOOKING
                            </span>

                            <h2>
                                Upcoming Booking
                            </h2>

                        </div>

                        <a href="#">
                            View all
                        </a>

                    </div>


                    <div class="booking-row">

                        <div class="date-box">

                            <strong>
                                18
                            </strong>

                            <span>
                                OCT
                            </span>

                        </div>


                        <div class="booking-info">

                            <strong>
                                Harvester 01
                            </strong>

                            <span>
                                Donabanda
                            </span>

                            <span>
                                06:00 AM - 10:00 AM
                            </span>

                        </div>


                        <span class="confirmed">
                            Confirmed
                        </span>

                    </div>

                </section>


                <!-- UPDATES -->

                <section class="card"
                         id="updates">

                    <div class="card-header">

                        <div>

                            <span class="section-label">
                                NOTIFICATIONS
                            </span>

                            <h2>
                                Latest Updates
                            </h2>

                        </div>

                    </div>


                    <div class="updates">


                        <div class="update">

                            <div class="update-icon success">
                                ✓
                            </div>

                            <div>

                                <strong>
                                    Booking confirmed
                                </strong>

                                <p>
                                    Harvester 01 booking confirmed.
                                </p>

                                <small>
                                    20 minutes ago
                                </small>

                            </div>

                        </div>


                        <div class="update">

                            <div class="update-icon warning">
                                !
                            </div>

                            <div>

                                <strong>
                                    Maintenance notice
                                </strong>

                                <p>
                                    Harvester 02 is under maintenance.
                                </p>

                                <small>
                                    2 hours ago
                                </small>

                            </div>

                        </div>


                    </div>

                </section>


            </section>

        </div>

    </main>


    <!-- =====================================================
         MOBILE NAV
    ====================================================== -->

    <nav class="mobile-nav">

        <a href="#" class="active">
            <span>⌂</span>
            Home
        </a>

        <a href="#booking">
            <span>+</span>
            Book
        </a>

        <a href="#history">
            <span>▣</span>
            History
        </a>

        <a href="#updates">
            <span>!</span>
            Updates
        </a>

    </nav>

</div>


<script src="${pageContext.request.contextPath}/script.js"></script>

</body>
</html>
