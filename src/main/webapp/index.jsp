<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Mana Harvester</title>

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="app">

    <!-- ================= SIDEBAR ================= -->
    <aside class="sidebar">

        <div class="brand">
            <div class="brand-icon">🌾</div>

            <div>
                <h2>Mana Harvester</h2>
                <span>Smart Farming</span>
            </div>
        </div>

        <nav class="side-nav">

            <a href="#" class="nav-item active">
                <span>⌂</span>
                Dashboard
            </a>

            <a href="#booking" class="nav-item">
                <span>📅</span>
                Book Harvester
            </a>

            <a href="#history" class="nav-item">
                <span>🕘</span>
                My Bookings
            </a>

            <a href="#updates" class="nav-item">
                <span>🔔</span>
                Updates
            </a>

        </nav>

        <div class="sidebar-bottom">

            <div class="user-card">
                <div class="avatar">M</div>

                <div>
                    <strong>Manohar</strong>
                    <small>Farmer</small>
                </div>
            </div>

            <button class="logout-btn">
                Logout
            </button>

        </div>

    </aside>


    <!-- ================= MAIN ================= -->

    <main class="main">

        <!-- TOP BAR -->
        <header class="topbar">

            <div>
                <p class="welcome">Good morning 👋</p>
                <h1>Welcome, Manohar</h1>
            </div>

            <div class="top-actions">

                <button class="notification">
                    🔔
                    <span></span>
                </button>

                <div class="profile">
                    <div class="avatar">M</div>

                    <div class="profile-info">
                        <strong>Manohar</strong>
                        <small>Farmer</small>
                    </div>
                </div>

            </div>

        </header>


        <!-- ================= DASHBOARD ================= -->

        <section class="dashboard">

            <!-- STAT CARDS -->

            <div class="stats-grid">

                <div class="stat-card">
                    <div class="stat-icon green">📅</div>

                    <div>
                        <span>Total Bookings</span>
                        <strong>12</strong>
                    </div>
                </div>


                <div class="stat-card">
                    <div class="stat-icon orange">🚜</div>

                    <div>
                        <span>Upcoming</span>
                        <strong>2</strong>
                    </div>
                </div>


                <div class="stat-card">
                    <div class="stat-icon blue">🌾</div>

                    <div>
                        <span>Total Acres</span>
                        <strong>18.5</strong>
                    </div>
                </div>


                <div class="stat-card">
                    <div class="stat-icon purple">⏱</div>

                    <div>
                        <span>Hours Booked</span>
                        <strong>31</strong>
                    </div>
                </div>

            </div>


            <!-- ================= MAIN GRID ================= -->

            <div class="content-grid">

                <!-- BOOKING -->

                <section class="card booking-card" id="booking">

                    <div class="card-header">

                        <div>
                            <span class="eyebrow">QUICK BOOKING</span>

                            <h2>Book a Harvester</h2>

                            <p>
                                Choose your preferred date and harvester.
                            </p>
                        </div>

                        <div class="booking-icon">
                            🚜
                        </div>

                    </div>


                    <form id="bookingForm">

                        <div class="form-grid">

                            <div class="form-group">

                                <label>Date</label>

                                <input
                                    type="date"
                                    id="bookingDate"
                                    required
                                >

                            </div>


                            <div class="form-group">

                                <label>Harvester</label>

                                <select id="harvester" required>

                                    <option value="">
                                        Select harvester
                                    </option>

                                    <option value="harvester-01">
                                        Harvester 01
                                    </option>

                                    <option value="harvester-02">
                                        Harvester 02
                                    </option>

                                    <option value="harvester-03">
                                        Harvester 03
                                    </option>

                                </select>

                            </div>


                            <div class="form-group">

                                <label>Land Area</label>

                                <div class="input-unit">

                                    <input
                                        type="number"
                                        id="acres"
                                        placeholder="0"
                                        min="0.5"
                                        step="0.5"
                                        required
                                    >

                                    <span>Acres</span>

                                </div>

                            </div>


                            <div class="form-group">

                                <label>Number of Trips</label>

                                <input
                                    type="number"
                                    id="trips"
                                    value="1"
                                    min="1"
                                    max="10"
                                    required
                                >

                            </div>


                            <div class="form-group">

                                <label>Estimated Hours</label>

                                <input
                                    type="number"
                                    id="hours"
                                    placeholder="Example: 4"
                                    min="1"
                                    required
                                >

                            </div>


                            <div class="form-group">

                                <label>Village / Location</label>

                                <input
                                    type="text"
                                    id="location"
                                    placeholder="Enter location"
                                    required
                                >

                            </div>

                        </div>


                        <div class="form-group">

                            <label>Available Slots</label>

                            <div class="slots">

                                <button
                                    type="button"
                                    class="slot active"
                                    data-slot="06:00 AM - 10:00 AM"
                                >
                                    <strong>06:00 AM</strong>
                                    <span>04 hours</span>
                                </button>


                                <button
                                    type="button"
                                    class="slot"
                                    data-slot="10:00 AM - 02:00 PM"
                                >
                                    <strong>10:00 AM</strong>
                                    <span>04 hours</span>
                                </button>


                                <button
                                    type="button"
                                    class="slot"
                                    data-slot="02:00 PM - 06:00 PM"
                                >
                                    <strong>02:00 PM</strong>
                                    <span>04 hours</span>
                                </button>

                            </div>

                        </div>


                        <div class="form-group">

                            <label>Additional Notes</label>

                            <textarea
                                id="notes"
                                placeholder="Any additional information..."
                            ></textarea>

                        </div>


                        <button class="primary-btn" type="submit">

                            <span>Confirm Booking</span>

                            <span>→</span>

                        </button>

                    </form>

                </section>


                <!-- AVAILABILITY -->

                <section class="card availability-card">

                    <div class="card-header">

                        <div>
                            <span class="eyebrow">LIVE STATUS</span>

                            <h2>Harvester Availability</h2>
                        </div>

                        <span class="status-dot">
                            Live
                        </span>

                    </div>


                    <div class="availability-list">

                        <div class="machine">

                            <div class="machine-icon">
                                🚜
                            </div>

                            <div class="machine-info">

                                <strong>Harvester 01</strong>

                                <span>
                                    John Deere
                                </span>

                            </div>

                            <div class="machine-status available">
                                Available
                            </div>

                        </div>


                        <div class="machine">

                            <div class="machine-icon">
                                🚜
                            </div>

                            <div class="machine-info">

                                <strong>Harvester 02</strong>

                                <span>
                                    Kubota
                                </span>

                            </div>

                            <div class="machine-status booked">
                                Booked
                            </div>

                        </div>


                        <div class="machine">

                            <div class="machine-icon">
                                🚜
                            </div>

                            <div class="machine-info">

                                <strong>Harvester 03</strong>

                                <span>
                                    Mahindra
                                </span>

                            </div>

                            <div class="machine-status available">
                                Available
                            </div>

                        </div>

                    </div>


                    <div class="availability-footer">

                        <span>Next available slot</span>

                        <strong>Tomorrow · 06:00 AM</strong>

                    </div>

                </section>

            </div>


            <!-- ================= LOWER GRID ================= -->

            <div class="lower-grid">


                <!-- UPCOMING BOOKING -->

                <section class="card upcoming-card">

                    <div class="card-header">

                        <div>
                            <span class="eyebrow">
                                NEXT BOOKING
                            </span>

                            <h2>Upcoming</h2>
                        </div>

                        <a href="#history">
                            View all
                        </a>

                    </div>


                    <div class="booking-item">

                        <div class="date-box">

                            <strong>18</strong>
                            <span>OCT</span>

                        </div>


                        <div class="booking-details">

                            <strong>Harvester 01</strong>

                            <span>
                                📍 Donabanda
                            </span>

                            <span>
                                🕕 06:00 AM - 10:00 AM
                            </span>

                        </div>


                        <span class="badge confirmed">
                            Confirmed
                        </span>

                    </div>

                </section>


                <!-- UPDATES -->

                <section class="card updates-card" id="updates">

                    <div class="card-header">

                        <div>
                            <span class="eyebrow">
                                NOTIFICATIONS
                            </span>

                            <h2>Latest Updates</h2>
                        </div>

                        <span class="notification-count">
                            3
                        </span>

                    </div>


                    <div class="update">

                        <div class="update-icon green">
                            ✓
                        </div>

                        <div>

                            <strong>
                                Booking confirmed
                            </strong>

                            <p>
                                Your Harvester 01 booking is confirmed.
                            </p>

                            <small>
                                20 minutes ago
                            </small>

                        </div>

                    </div>


                    <div class="update">

                        <div class="update-icon orange">
                            !
                        </div>

                        <div>

                            <strong>
                                Maintenance notice
                            </strong>

                            <p>
                                Harvester 02 will be under maintenance.
                            </p>

                            <small>
                                2 hours ago
                            </small>

                        </div>

                    </div>


                    <div class="update">

                        <div class="update-icon blue">
                            ℹ
                        </div>

                        <div>

                            <strong>
                                New slots available
                            </strong>

                            <p>
                                Additional slots opened for tomorrow.
                            </p>

                            <small>
                                Yesterday
                            </small>

                        </div>

                    </div>

                </section>

            </div>

        </section>

    </main>


    <!-- ================= MOBILE NAV ================= -->

    <nav class="mobile-nav">

        <a href="#" class="active">
            <span>⌂</span>
            Home
        </a>

        <a href="#booking">
            <span>＋</span>
            Book
        </a>

        <a href="#history">
            <span>🕘</span>
            History
        </a>

        <a href="#updates">
            <span>🔔</span>
            Updates
        </a>

    </nav>

</div>


<script src="script.js"></script>

</body>
</html>
