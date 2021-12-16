import React, { useEffect, useState } from "react"
import '../App.css';
import './Posts.css';

const Posts = () => {
  const [posts, setData] = useState([]);

  useEffect(() => {
    const url = "http://localhost:3000/api/v1/posts";

    const fetchData = async () => {
      try {
        const response = await fetch(url);
        const json = await response.json();
        console.log(json.data);
        setData(json.data);
      } catch (error) {
        console.log("error", error);
      }
    };

    fetchData();
  }, []);

  return (
    <div class='all_posts'>
      {posts.map((post, index) => (
        <div class='posts'>
        <p class='post_message'>{post.message}</p>
        <br></br>
        <p class='post_created_at'>{'created at' + ' ' + post.created_at.slice(0,10) + ' ' + post.created_at.slice(11,16)}</p>
        </div>
      ))}
    </div>
  );
};

export default Posts;

    // Text box for posting a post
    //   <div class="post-form">
    //     <form action="/posts/new" method="POST">
    //       <label for="body">New Post</label>
    //       <textarea id="postBody" cols="50" rows="10" name="body" oninput="countCharacters(event)"></textarea>
    //     <div>characters left:<span id="charactersLeft">500</span></div>
    //       <button type="submit">Save</button>
    //     </form>
    // </div>