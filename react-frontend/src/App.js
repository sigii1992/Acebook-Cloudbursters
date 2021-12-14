import React from 'react';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom'
import './App.css';
import Home from './components/pages/Home';
import About from './components/pages/About';
import Products from './components/pages/Products';
import SignUp from './components/pages/SignUp';
import Footer from './components/Footer';
import ErrorPage from './components/pages/ErrorPage';

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
      </Routes>

    </Router>
    </>
  );
}

fetch('http://localhost:3000/api/v1/posts')
  .then(response => response.json())
  .then(data => {
    console.log(data)
    data.data.forEach(post => {
      console.log('hello')
      console.log(post)
      // post.message
  })
});

export default App;