import React from 'react'
import '../styles/Subscribe.css'
import 'bootstrap/dist/css/bootstrap.min.css';

export default function Subscribe() {
    return (
        <div className="container" id="subscribe-box">
            <div className="col-md-6">
                <h1 className="col-md-12 pb-5">Subscribe and get exclusive deals & offers</h1>
                <div className="input-group position-relative">
                    <span className="input-group-text border border-0 bg-white ps-3"><img src={require(`../images/img/email.png`)} alt="Email icon" /></span>
                    <input type="text" className="form-control form-control-lg pt-4 pb-4 ps-0 border-0 bg-white fs-6" placeholder="Enter your mail" aria-label="Example text with button addon" aria-describedby="button-addon1" />
                    <button className="btn btn-outline-secondary position-absolute top-0 end-0 mx-2 mt-3 border-0 fs-6" type="button" id="button-suscribe">Subscribe</button>
                </div>
            </div>
            <div className="background-image-top-right"></div>
            <div className="background-image-bottom-left"></div>
        </div>
    )
}
