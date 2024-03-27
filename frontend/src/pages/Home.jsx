import React from 'react';
import GetStarted from '../Components/GetStarted.jsx';
import GetStartedProps from '../Props/GetStartedProps.js'
import Needs from '../Components/Needs.jsx';
import NeedsProps from '../Props/NeedsProps.js';
import Deals from '../Components/Deals.jsx';
import Vacation from '../Components/VacationPlan.jsx';
import Reviews from '../Components/Reviews.jsx';
import ReviewsProps from '../Props/ReviewsProps.js';
import Blog from '../Components/Blog.jsx';
import Subscribe from '../Components/Subscribe.jsx';
import SubscribeProps from '../Props/SubscribeProps.js';

export default function Home() {
    return (       
        <div >       
            
            <div id="started">
                <GetStarted 
                        props = {GetStartedProps}/>
            </div>   
            <div id="needs">
                <Needs 
                    cards = {NeedsProps}/>
            </div>  
            <div id='deals'>
                <Deals /> 
            </div>
            <div id='vacation'>
                <Vacation />
            </div>
            <div id='reviews'>
                <Reviews 
                    cards = {ReviewsProps}/> 
            </div>
            <div id='blog'>
                <Blog />
            </div>
            <div id='subscribe'>
                <Subscribe
                    props = {SubscribeProps}/>   
            </div>              
        </div>       
    );
}