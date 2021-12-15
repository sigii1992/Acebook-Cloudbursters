import React from 'react';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom'
import './App.css';
import Home from './components/pages/Home';
import About from './components/pages/About';
import Products from './components/pages/Products';
import SignUp from './components/pages/SignUp';
import ErrorPage from './components/pages/ErrorPage';
import Posts from './components/pages/Posts';

function App() {
  return (
    <>
    <Router>
      <Navbar />
      <Routes>
          <Route path='/' element={<Home/>} />
        
          <Route path='/about' element={<About/>} />
         
          <Route path='/products' element={<Products/>} />
          {/* <Products /> */}
          <Route path='/sign-up' element={<SignUp/>} />
          <Route path="*" element={<ErrorPage/>} />
          <Route path='/posts' element={<Posts/>} />
      </Routes>

    </Router>
    </>
  );
};

export default App;