import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

fetch('http://localhost:3000/api/v1/posts')
  .then(response => response.json())
  .then(response => {
    console.log(response)
    console.log('hello')
   // response.data.forEach(post => {
     // console.log('hello')
      // console.log(post)
      // post.message
  })
//});

ReactDOM.render(<App />, document.getElementById('root'));