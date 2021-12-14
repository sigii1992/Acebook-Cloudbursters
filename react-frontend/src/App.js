import React from 'react';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import './App.css';
import Home from './components/pages/Home';

function App() {
  return (
    <>
    <Router>
      <Navbar />
      <Routes>
        <Route path='/' exact component=
        {Home} />
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