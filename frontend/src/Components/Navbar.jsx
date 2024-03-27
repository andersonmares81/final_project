import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';
import '../styles/Navbar.css';
import { Link } from 'react-router-dom';
import useScrollTo from '../hooks/useScrollTo';


export default function Navbar() {
    const [showSections, setShowSections] = useState(false);
    const { handleScrollTo } = useScrollTo();

    const toggleSections = () => {
        setShowSections(!showSections);
    }
    const handleClick = (sectionId) => {
        handleScrollTo(sectionId); 
    };

    return (
        <div id="navbar">
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNavbar"
                        aria-controls="myNavbar" aria-expanded="true" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse" id="myNavbar">
                        <ul className="d-flex flex-row list-unstyled align-items-center justify-content-center">
                            <li className="logo-nav">
                                <img className="nav-img" src={`../images/icons/Logo-icon.png`} alt="Logo-icon" />
                            </li>
                            <li>
                                <Link className="mx-3 fs-5 nav-link font-weight-bold text-dark" to="/">Home</Link>
                            </li>
                            <li onMouseEnter={toggleSections} onMouseLeave={toggleSections}>
                                <span className="mx-3 fs-5 nav-link font-weight-bold text-dark">Sections</span>
                                {showSections && (
                                    <div className="sections-dropdown">
                                        <ul>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('started')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Get Started</span>
                                                </Link>
                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('needs')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Things you need to do</span>
                                                </Link>
                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('deals')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Exclusive deals & discounts</span>
                                                </Link>
                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('vacation')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Best vacation plan</span>
                                                </Link>

                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('reviews')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">What people say about us</span>
                                                </Link>

                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('blog')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Blog</span>
                                                </Link>

                                            </li>
                                            <li>
                                                <Link to="/" onClick={() => handleClick('subscribe')} style={{ textDecoration: 'none', color: 'inherit' }}>
                                                    <span className="mx-3 fs-5 nav-link font-weight-bold">Subscribe</span>
                                                </Link>

                                            </li>
                                        </ul>
                                    </div>
                                )}
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">About</a>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">
                                    <Link to="/" style={{ textDecoration: 'none', color: 'inherit' }} >Subscribe</Link>
                                </a>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">
                                    <Link Link to="/extended-blog" style={{ textDecoration: 'none', color: 'inherit' }}>Blog</Link>
                                </a>
                            </li>
                            <li className="signing">
                                <div className="btn-group" role="group">
                                    <div className="btn-group" role="group">
                                        <button id="btn-login" className="btn btn-lg rounded-3 me-2">
                                            <Link to="/login" style={{ textDecoration: 'none', color: 'inherit' }}>Login</Link>
                                        </button>
                                        <button id="btn-signup" className="btn btn-lg rounded-3">
                                            <Link to="/register" style={{ textDecoration: 'none', color: 'inherit' }}>Sign up</Link>
                                        </button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    )
}