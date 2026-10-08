<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Book trusted harvesters, compare farm services and check local weather with Mana Harvester.">
    <title>Mana Harvester | Harvesting made simple</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/harvester.css">
    <script src="${pageContext.request.contextPath}/harvester.js" defer></script>
</head>
<body>
    <header class="site-header">
        <a class="brand" href="#home" aria-label="Mana Harvester home">
            <span class="brand-mark" aria-hidden="true">MH</span>
            <span class="brand-name">mana<span>harvester</span><small>FARMING, MOVING FORWARD</small></span>
        </a>
        <button class="menu-toggle" type="button" aria-expanded="false" aria-controls="site-nav" aria-label="Open navigation">
            <span></span><span></span>
        </button>
        <nav class="site-nav" id="site-nav" aria-label="Main navigation">
            <a href="#services">Services</a>
            <a href="#how-it-works">How it works</a>
            <a href="#pricing">Pricing</a>
            <a href="#weather">Weather</a>
        </nav>
        <a class="header-cta" href="#booking">Book a harvester <span aria-hidden="true">↗</span></a>
    </header>

    <main>
        <section class="hero" id="home">
            <div class="hero-copy">
                <span class="eyebrow"><span class="status-dot"></span> YOUR HARVEST, RIGHT ON TIME</span>
                <h1>Good harvests<br>start with a <em>good plan.</em></h1>
                <p>Find the right harvester, choose a time that works for your farm, and get back to what matters.</p>
                <div class="hero-actions">
                    <a class="button button-primary" href="#booking">Book your machine <span aria-hidden="true">→</span></a>
                    <a class="text-link" href="#services">Explore our services <span aria-hidden="true">↗</span></a>
                </div>
                <div class="hero-proof">
                    <div class="proof-avatars" aria-hidden="true">
                        <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80" alt="">
                        <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=80&q=80" alt="">
                        <img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=80&q=80" alt="">
                    </div>
                    <p><strong>Made for farmers</strong><br>Reliable equipment. Local support.</p>
                </div>
            </div>
            <div class="hero-visual">
                <img src="https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1500&q=85" alt="Golden fields stretching across the countryside">
                <div class="hero-image-shade"></div>
                <div class="hero-note">
                    <span class="note-icon" aria-hidden="true">✳</span>
                    <span><strong>Ready when your field is.</strong><small>Simple booking. Skilled operators.</small></span>
                </div>
                <div class="hero-index"><span>01</span> / 03</div>
            </div>
        </section>

        <section class="trust-strip" aria-label="Service highlights">
            <div><span class="trust-icon">01</span><span><strong>Local operators</strong><small>People who know your land</small></span></div>
            <div><span class="trust-icon">02</span><span><strong>Clear pricing</strong><small>Know the estimate upfront</small></span></div>
            <div><span class="trust-icon">03</span><span><strong>Flexible slots</strong><small>Pick a time that suits you</small></span></div>
            <a href="#booking">Let’s plan your harvest <span aria-hidden="true">→</span></a>
        </section>

        <section class="section media-section" id="field-stories">
            <div class="section-heading">
                <div><span class="eyebrow">FROM THE FIELD</span><h2>Real farms. <em>Real work.</em></h2></div>
                <div class="slider-controls">
                    <button class="slider-arrow" type="button" id="slide-prev" aria-label="Previous field story">←</button>
                    <button class="slider-arrow" type="button" id="slide-next" aria-label="Next field story">→</button>
                </div>
            </div>
            <div class="story-slider" id="story-slider" aria-label="Farmer and harvester stories">
                <article class="story-card story-photo">
                    <img src="https://images.unsplash.com/photo-1592982537447-6f2a6a0a4e41?auto=format&fit=crop&w=1000&q=85" alt="Farmer standing in a green crop field">
                    <div class="story-caption"><span>OUR FARMERS</span><h3>Built around the people who grow our food.</h3></div>
                </article>
                <article class="story-card story-machine">
                    <img src="https://images.unsplash.com/photo-1499529112087-3cb3b73b3c3e?auto=format&fit=crop&w=1000&q=85" alt="Harvest field ready for the season">
                    <div class="story-caption"><span>THE RIGHT MACHINE</span><h3>Well-matched equipment for every field.</h3></div>
                </article>
                <article class="story-card story-video">
                    <video controls playsinline preload="none" poster="https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1000&q=85" aria-label="Harvester working in a field video">
                        <source src="https://videos.pexels.com/video-files/5527832/5527832-hd_1920_1080_25fps.mp4" type="video/mp4">
                        Your browser does not support HTML video.
                    </video>
                    <div class="video-label"><span class="play-mark" aria-hidden="true">▶</span><span>IN THE FIELD<small>See a harvest in motion</small></span></div>
                </article>
            </div>
            <div class="slider-dots" id="slider-dots" aria-label="Choose a field story"></div>
        </section>

        <section class="section services-section" id="services">
            <div class="section-heading">
                <div><span class="eyebrow">WHAT WE DO</span><h2>Everything your harvest <em>needs.</em></h2></div>
                <p>Practical farm services, dependable machines, and a team that helps you get the job done.</p>
            </div>
            <div class="service-grid">
                <article class="service-card service-feature">
                    <span class="service-number">01 / HARVESTING</span>
                    <span class="service-icon" aria-hidden="true">✳</span>
                    <h3>Crop harvesting</h3>
                    <p>Book a suitable harvester and experienced operator for your crop and acreage.</p>
                    <a href="#booking">Find a time slot <span aria-hidden="true">→</span></a>
                </article>
                <article class="service-card">
                    <span class="service-number">02 / FIELD PREP</span>
                    <span class="service-icon" aria-hidden="true">⌁</span>
                    <h3>Field preparation</h3>
                    <p>Get your land ready for the next season with reliable equipment and local help.</p>
                    <a href="#booking">Ask about availability <span aria-hidden="true">→</span></a>
                </article>
                <article class="service-card">
                    <span class="service-number">03 / TRANSPORT</span>
                    <span class="service-icon" aria-hidden="true">↗</span>
                    <h3>Harvest transport</h3>
                    <p>Coordinate the next step after cutting, with transport support for your harvest.</p>
                    <a href="#booking">Plan your service <span aria-hidden="true">→</span></a>
                </article>
            </div>
        </section>

        <section class="booking-band" id="booking">
            <div class="booking-intro">
                <span class="eyebrow">SLOTS THAT WORK FOR YOU</span>
                <h2>Let’s get your<br><em>field on the calendar.</em></h2>
                <p>Tell us where and when. Choose an available time slot and send your request in a few simple steps.</p>
                <div class="booking-help"><span aria-hidden="true">↳</span> Your request is saved in this browser demo.</div>
            </div>
            <form class="booking-form" id="bookingForm">
                <div class="form-heading"><span>01 — BOOKING DETAILS</span><span class="required-note">* Required</span></div>
                <div class="form-grid">
                    <label class="form-field">Your name *
                        <input id="farmerName" name="farmerName" type="text" placeholder="e.g. Ramesh Kumar" autocomplete="name" required>
                    </label>
                    <label class="form-field">Phone number *
                        <input id="phone" name="phone" type="tel" inputmode="tel" autocomplete="tel" placeholder="10-digit mobile number" pattern="[0-9+() -]{10,16}" required>
                    </label>
                    <label class="form-field">Village / location *
                        <input id="location" name="location" type="text" placeholder="Village or nearby town" required>
                    </label>
                    <label class="form-field">Service *
                        <select id="serviceType" name="serviceType" required>
                            <option value="harvesting">Crop harvesting</option>
                            <option value="field-preparation">Field preparation</option>
                            <option value="transport">Harvest transport</option>
                        </select>
                    </label>
                    <label class="form-field">Preferred date *
                        <input id="bookingDate" name="bookingDate" type="date" required>
                    </label>
                    <label class="form-field">Land area *
                        <span class="input-with-unit"><input id="acres" name="acres" type="number" min="0.5" step="0.5" placeholder="e.g. 5" required><span>acres</span></span>
                    </label>
                    <label class="form-field">Machine preference
                        <select id="harvester" name="harvester">
                            <option value="Any available">Any available</option>
                            <option value="Harvester 01">Harvester 01 — standard</option>
                            <option value="Harvester 02">Harvester 02 — high capacity</option>
                            <option value="Harvester 03">Harvester 03 — compact</option>
                        </select>
                    </label>
                    <label class="form-field">Estimated hours
                        <input id="hours" name="hours" type="number" min="1" step="1" placeholder="Optional">
                    </label>
                </div>
                <fieldset class="slot-section">
                    <legend>Choose a time slot *</legend>
                    <div class="slots" role="group" aria-label="Available booking time slots">
                        <button type="button" class="slot-button is-selected" data-slot="06:00 AM – 10:00 AM" aria-pressed="true"><strong>06:00 AM</strong><span>Morning · 4 hours</span></button>
                        <button type="button" class="slot-button" data-slot="10:00 AM – 02:00 PM" aria-pressed="false"><strong>10:00 AM</strong><span>Midday · 4 hours</span></button>
                        <button type="button" class="slot-button" data-slot="02:00 PM – 06:00 PM" aria-pressed="false"><strong>02:00 PM</strong><span>Afternoon · 4 hours</span></button>
                    </div>
                </fieldset>
                <label class="form-field notes-field">Anything else we should know?
                    <textarea id="notes" name="notes" rows="2" placeholder="Crop type, access notes, or other requirements"></textarea>
                </label>
                <div class="estimate-row"><span>Estimated service price</span><strong id="price-estimate">₹1,800 <small>/ acre</small></strong></div>
                <button class="button button-primary submit-button" type="submit">Request this booking <span aria-hidden="true">→</span></button>
                <p class="form-message" id="booking-message" role="status" aria-live="polite"></p>
            </form>
        </section>

        <section class="section pricing-section" id="pricing">
            <div class="section-heading">
                <div><span class="eyebrow">STRAIGHTFORWARD RATES</span><h2>Know the price. <em>Plan ahead.</em></h2></div>
                <p>Indicative starting rates. Your final quote depends on crop, field conditions, travel, and service availability.</p>
            </div>
            <div class="price-grid">
                <article class="price-card"><span class="price-label">CROP HARVESTING</span><p class="price"><strong>₹1,800</strong><span>/ acre*</span></p><p>Harvester and operator for a standard field booking.</p><a href="#booking">Choose harvesting <span aria-hidden="true">→</span></a></article>
                <article class="price-card price-highlight"><span class="price-label">FIELD PREPARATION</span><p class="price"><strong>₹1,200</strong><span>/ acre*</span></p><p>Get your land ready for planting and the season ahead.</p><a href="#booking">Choose field prep <span aria-hidden="true">→</span></a></article>
                <article class="price-card"><span class="price-label">HARVEST TRANSPORT</span><p class="price"><strong>Ask us</strong></p><p>Share your location and load details for a clear estimate.</p><a href="#booking">Request a quote <span aria-hidden="true">→</span></a></article>
            </div>
            <p class="fine-print">*Example starting prices for demonstration only; confirm rates and availability before booking.</p>
        </section>

        <section class="offer-banner" id="offers">
            <div class="offer-stamp">FIELD<br>OFFER</div>
            <div><span class="eyebrow">A LITTLE MORE FOR YOUR NEXT SEASON</span><h2>Book early. <em>Harvest easy.</em></h2><p>Ask our team about group and early-season booking offers in your area.</p></div>
            <a class="button button-light" href="#booking">Check local offers <span aria-hidden="true">→</span></a>
        </section>

        <section class="section weather-section" id="weather">
            <div class="weather-copy">
                <span class="eyebrow">A BETTER DAY TO PLAN</span>
                <h2>Field plans meet <em>the forecast.</em></h2>
                <p>Check current conditions before choosing a day for your work. Search for your village or nearest town.</p>
                <form class="weather-search" id="weatherForm">
                    <label class="visually-hidden" for="weatherLocation">Village or town for local weather</label>
                    <input id="weatherLocation" name="weatherLocation" type="search" value="Guntur" placeholder="Enter village or town" required>
                    <button type="submit" aria-label="Get local weather">Check <span aria-hidden="true">→</span></button>
                </form>
                <p class="weather-status" id="weather-status" role="status" aria-live="polite">Loading local forecast…</p>
            </div>
            <div class="weather-card" aria-live="polite">
                <div class="weather-top"><span class="weather-icon" id="weather-icon" aria-hidden="true">☀</span><span id="weather-place">Guntur, India</span></div>
                <strong class="weather-temperature" id="weather-temperature">--°</strong>
                <span class="weather-condition" id="weather-condition">Getting current conditions</span>
                <div class="weather-details">
                    <span><small>HUMIDITY</small><strong id="weather-humidity">--%</strong></span>
                    <span><small>WIND</small><strong id="weather-wind">-- km/h</strong></span>
                    <span><small>RAIN CHANCE</small><strong id="weather-rain">--%</strong></span>
                </div>
                <small class="weather-source">Live data via Open-Meteo</small>
            </div>
        </section>

        <section class="closing-cta" id="how-it-works">
            <span class="eyebrow">A SIMPLE WAY TO GET STARTED</span>
            <h2>Your next harvest is<br><em>one good booking away.</em></h2>
            <a class="button button-primary" href="#booking">Choose your slot <span aria-hidden="true">→</span></a>
        </section>
    </main>

    <footer class="site-footer">
        <a class="brand footer-brand" href="#home"><span class="brand-mark" aria-hidden="true">MH</span><span class="brand-name">mana<span>harvester</span><small>FARMING, MOVING FORWARD</small></span></a>
        <p>Helping local farms make every season count.</p>
        <a href="#home">Back to top ↑</a>
        <small class="footer-note">Booking requests in this demo are stored on this device only.</small>
    </footer>
</body>
</html>
