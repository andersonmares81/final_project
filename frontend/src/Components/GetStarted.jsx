import React, { useState } from 'react'
import '../styles/GetStarted.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import LocationModal from '../Components/LocationModal.jsx';
import DateModal from '../Components/DateModal.jsx';
import GuestModal from '../Components/GuestModal.jsx';

export default function GetStarted() {
    const [showLocationModal, setShowLocationModal] = useState(false);
    const [showDateModal, setShowDateModal] = useState(false);
    const [showGuestModal, setShowGuestModal] = useState(false);
    const [subitem1, setSubitem1] = useState('Where are you going'); 
    const [subitem2, setSubitem2] = useState('When you will go'); 
    const [subitem3, setSubitem3] = useState('Number of guests'); 

    const handleLocationClick = () => {
        setShowLocationModal(!showLocationModal);

    };
    const handleDateClick = () => {
        setShowDateModal(!showDateModal);

    };
    const handleGuestClick = () => {
        setShowGuestModal(!showGuestModal);

    };

    const handleCity = (city) =>{
        console.log("City:", city)
        setSubitem1(city);
        closeLocation()
    }

    const handleDate = (date) =>{
        console.log("Date:", date)
        setSubitem2(date);
        closeDate()
    }

    const handleGuest = (guest) =>{
        console.log("NumberGuest:", guest)
        setSubitem3(guest);
        closeGuest()
    }

    const closeLocation = () =>{
        setShowLocationModal(false)
    }

    const closeDate = () =>{
        setShowDateModal(false)
    }
    const closeGuest= () =>{
        setShowGuestModal(false)
    }
    
    return (
        <div id="get-started">
            <div className="home">
                <div className="container col-xxl-8">
                    <div className="row flex-lg-row-reverse align-items-center">
                        <div className="col-10 col-sm-8 col-lg-6">
                            <img src={`../images/general/Traveler.png`} className="traveler-img d-block mx-lg-auto img-fluid" loading="lazy" alt="Traveler" />
                        </div>
                        <div className="col-lg-6">
                            <h1 className="display-5 fw-bold lh-1 mb-4 text-start" id="title">Get your exciting <span className="orange-color">journey</span> started with us.</h1>
                            <p className="text-muted subtitle">A Team of experienced tourism professionals will provide you with the best advice and tips for your desired place.</p>
                            <div className="d-grid d-md-flex justify-content-md-start mt-4">
                                <button type="button" className="btn btn-primary btn-lg me-md-2" id="btn-discover">Discover Now</button>
                            </div>
                        </div>
                    </div>
                </div>
                <section>
                    <div className="container d-flex justify-content-center">
                        <div className="card align-items-center px-5" id="floating-card">
                            <div className="row">
                                <div className="col-lg-3 floating-col">
                                    <div className="card-body row text-start">
                                        <button className='btn' onClick={handleLocationClick}>
                                            <div className="d-flex align-items-center">
                                                <h6 className="card-title-1">Location</h6>
                                                <svg className="mx-2 mb-1" xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8" fill="none">
                                                    <path d="M1 1.5L6 6.5L11 1.5" stroke="#FA7436" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </div>
                                        </button>
                                        <p className="card-text subitem-text text-muted mb-1">{subitem1}</p>
                                    </div>
                                </div>
                                <div className="col-lg-3 floating-col">
                                    <div className="card-body row text-start">
                                        <button className='btn' onClick={handleDateClick}>
                                            <div className="d-flex align-items-center">
                                                <h6 className="card-title-2">Date</h6>
                                                <svg className="mx-2 mb-1" xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8" fill="none">
                                                    <path d="M1 1.5L6 6.5L11 1.5" stroke="#FA7436" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </div>
                                        </button>
                                        <p className="card-text subitem-text text-muted mb-1">{subitem2.toString()}</p>
                                    </div>
                                </div>
                                <div className="col-lg-3 floating-col">
                                    <div className="card-body row text-start">
                                        <button className='btn' onClick={handleGuestClick}>
                                            <div className="d-flex align-items-center">
                                                <h6 className="card-title-3">Guests</h6>
                                                <svg className="mx-2 mb-1" xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8" fill="none">
                                                    <path d="M1 1.5L6 6.5L11 1.5" stroke="#FA7436" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </div>
                                        </button>
                                        <p className="card-text subitem-text text-muted mb-1">{subitem3}</p>
                                    </div>
                                </div>
                                <div className="col-lg-3 floating-col d-flex justify-content-end">
                                    <div className="card-body">
                                        <button type="button" id="explore-btn" className="btn mt-2">Explore Now</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="container d-flex justify-content-center position-relative">
                            {/* Modals */}
                            {showLocationModal && (
                                <div className="form-floating" style={{ position: 'absolute', top: '100%', left: '20%', transform: 'translate(-58%, -182%)', zIndex: '1000' }}>
                                    <LocationModal handleCity={handleCity}/>
                                </div>                    
                            )}
                            {showDateModal && (
                                <div className="form-floating" style={{ position: 'absolute', top: '100%', left: '35%', transform: 'translate(-24%, -130%)', zIndex: '1000' }}>
                                    <DateModal handleDate={handleDate} />
                                </div>                    
                            )}
                            {showGuestModal && (
                                <div className="form-floating" style={{ position: 'absolute', top: '100%', left: '60%', transform: 'translate(-42%, -182%)', zIndex: '1000' }}>
                                    <GuestModal  handleGuest={handleGuest}/>
                                </div>                    
                            )}
                    </div>

                </section>

            </div>
        </div>
    )
}
