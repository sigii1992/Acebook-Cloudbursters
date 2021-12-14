import React from 'react';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import './App.css';
import Home from './components/pages/Home';
import Services from './components/pages/Services';
import Products from './components/pages/Products';
import SignUp from './components/pages/SignUp';

function App() {
  return (
    <>
    <Router>
      <Navbar />
      <Routes>
          <Route path='/' exact component={Home} />
          {/* <Home /> */}
          <Route path='/services' component={Services} />
          {/* <Services /> */}
          <Route path='/products' component={Products} />
          {/* <Products /> */}
          <Route path='/sign-up' component={SignUp} />
          {/* <SignUp /> */}
          {/* <Route path='/log-in' component={LogIn} />
          <Login /> */}
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