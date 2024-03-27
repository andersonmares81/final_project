import './App.css';
import Navbar from './Components/Navbar.jsx';
import NavbarProps from './Props/NavbarProps.js';
import Footer from './Components/Footer.jsx';
import Home from './pages/Home.jsx';
import Login from './pages/Login.jsx';
import Register from './pages/Register.jsx';
import ExtendedBlog from './pages/ExtendedBlog.jsx';
import React, { useEffect } from 'react';
import { Route, BrowserRouter as Router, Routes, useLocation } from 'react-router-dom';

function App() {
  function ScrollToTopOnPageChange() {
    const { pathname } = useLocation();
  
    useEffect(() => {
      window.scrollTo(0, 0);
    }, [pathname]);
  
    return null;
  }

  return (
    <div className='App'>
      <Router>
      <Navbar
        props = {NavbarProps}/>
        <ScrollToTopOnPageChange/>
        <Routes>
          <Route path="/" element={<Home/>}/>
          <Route path="/extended-blog" element={<ExtendedBlog/>}/>
          <Route path="/login" element={<Login/>}/>
          <Route path="/register" element={<Register/>}/>
        </Routes>
      <Footer/>
      </Router>
    </div>
  );
}

export default App;
