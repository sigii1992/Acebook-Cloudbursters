import React, { useEffect, useState } from "react"
import '../App.css';
import './CreatePost.css';

const CreatePost = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    const url = "http://localhost:3000/api/v1/posts";
    const requestOptions = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify({ message: 'React Hooks ' })
      };
    fetch(url, requestOptions)
      .then(response => response.json())
      .then(json => setData(json.data))
  }, []);
  
  return (
    <>
    <div class="post-form">
    <form action="/posts" method="POST">
      <label for="body">New Post</label>
      <textarea id="postBody" cols="50" rows="10" name="body" oninput="countCharacters(event)"></textarea>
      <div>characters left:<span id="charactersLeft">500</span></div>
      <button onClick={useEffect} type="submit">Save</button>
    </form>
    </div>
    </>
  );
};

export default CreatePost;
