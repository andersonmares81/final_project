import React from 'react';
import GetStarted from '../Components/GetStarted.jsx';
import GetStartedProps from '../Props/GetStartedProps.js'
import Needs from '../Components/Needs.jsx';
import Deals from '../Components/Deals.jsx';
import Vacation from '../Components/VacationPlan.jsx';
import Reviews from '../Components/Reviews.jsx';
import Blog from '../Components/Blog.jsx';
import Subscribe from '../Components/Subscribe.jsx';

export default function Home() {
    return (       
        <div >       
            
            <div id="started">
                <GetStarted 
                        props = {GetStartedProps}/>
            </div>   
            <div id="needs">
                <Needs/>
            </div>  
            <div id='deals'>
                <Deals /> 
            </div>
            <div id='vacation'>
                <Vacation />
            </div>
            <div id='reviews'>
                <Reviews/> 
            </div>
            <div id='blog'>
                <Blog />
            </div>
            <div id='subscribe'>
                <Subscribe/>   
            </div>              
        </div>       
    );
}