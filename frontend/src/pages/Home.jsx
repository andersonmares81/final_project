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
            <GetStarted 
                props = {GetStartedProps}/>
            <Needs 
                cards = {NeedsProps}/>
            <Deals />   
            <Vacation />
            <Reviews 
                cards = {ReviewsProps}/> 
            <Blog />
            <Subscribe
                props = {SubscribeProps}/>              
        </div>       
    );
}