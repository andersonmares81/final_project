import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';
import '../styles/Navbar.css';
import { Link } from 'react-router-dom';


export default function Navbar({ props }) { 
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
                                <img className="nav-img" src={require(`../images/icons/${props.image}`)} alt="Logo-icon" />
                            </li>
                            <li>                                
                                <Link className="mx-3 fs-5 nav-link font-weight-bold text-dark" to = "/">{props.link1}</Link>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">{props.link2}</a>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">{props.link3}</a>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">{props.link4}</a>
                            </li>
                            <li>
                                <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">
                                    <Link   Link to="/extended-blog" style={{ textDecoration: 'none', color: 'inherit' }}>{props.link5}</Link>
                                </a>
                            </li>
                            <li className="signing">
                                <div className="btn-group" role="group">
                                    <div className="btn-group" role="group">
                                        <button id="btn-login" className="btn btn-lg rounded-3 me-2">
                                            <Link   Link to="/login" style={{ textDecoration: 'none', color: 'inherit' }}>{props.btn_txt_1}</Link>
                                        </button>                                        
                                        <button id="btn-signup" className="btn btn-lg rounded-3">
                                            <Link   Link to="/register" style={{ textDecoration: 'none', color: 'inherit' }}>{props.btn_txt_2}</Link>
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
/*
class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: []
        };
    }
    componentDidMount() {
        this.fetchData();
    }

    fetchData = () => {
        axios.get('http://localhost:4001/api/navbar')
            .then(response => {
                this.setState({ data: response.data });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    render() {
        return (
            <div id="navbar">
                <nav className="navbar navbar-expand-lg">
                    <div className="container">
                        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNavbar"
                            aria-controls="myNavbar" aria-expanded="true" aria-label="Toggle navigation">
                            <span className="navbar-toggler-icon"></span>
                        </button>
                        <div className="navbar-collapse collapse" id="myNavbar">
                            <ul className="d-flex flex-row list-unstyled align-items-center justify-content-center">
                                <li className="logo-nav">
                                    <img className="nav-img" src={require(`../images/icons/${data.image}`)} alt="Logo-icon" />
                                </li>
                                <li>
                                    <Link className="mx-3 fs-5 nav-link font-weight-bold text-dark" to="/">{data.link1}</Link>
                                </li>
                                <li onMouseEnter={toggleSections} onMouseLeave={toggleSections}>
                                    <span className="mx-3 fs-5 nav-link font-weight-bold text-dark">Sections</span>
                                    {showSections && (
                                        <div className="sections-dropdown">
                                            <ul>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold " href="#started">Get Started</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#needs">Things you need to do</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#deals">Exclusive deals & discounts</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#vacation">Best vacation plan</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#reviews">What people say about us</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#blog">Blog</a>
                                                </li>
                                                <li>
                                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#subscribe">Subscribe</a>
                                                </li>
                                            </ul>
                                        </div>
                                    )}
                                </li>
                                <li>
                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">{data.link3}</a>
                                </li>
                                <li>
                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">{data.link4}</a>
                                </li>
                                <li>
                                    <a className="mx-3 fs-5 nav-link font-weight-bold text-dark" href="#">
                                        <Link Link to="/extended-blog" style={{ textDecoration: 'none', color: 'inherit' }}>{data.link5}</Link>
                                    </a>
                                </li>
                                <li className="signing">
                                    <div className="btn-group" role="group">
                                        <div className="btn-group" role="group">
                                            <div className="btn-group" role="group">
                                                <button id="btn-login" className="btn btn-lg rounded-3 me-2">
                                                    <Link Link to="/login" style={{ textDecoration: 'none', color: 'inherit' }}>{data.btn_txt_1}</Link>
                                                </button>
                                                <button id="btn-signup" className="btn btn-lg rounded-3">
                                                    <Link Link to="/register" style={{ textDecoration: 'none', color: 'inherit' }}>{data.btn_txt_2}</Link>
                                                </button>
                                            </div>
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
}

export default Navbar;
*/