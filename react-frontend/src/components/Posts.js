import React from 'react';
import '../App.css';
import './Posts.css';

function Posts() {
  fetch('http://localhost:3000/api/v1/posts')
  .then(response => response.json())
  .then(response => {
    response.data.forEach(post => {
      const posts = document.createElement('div')
      posts.classList.add('posts')

      const post_message = document.createElement('P')
      post_message.innerText = post.message
      post_message.classList.add('post_message')

      const created_at = document.createElement('P')
      created_at.innerText = 'created at' + ' ' + post.created_at.slice(0,10) + ' ' + post.created_at.slice(11,16)
     
      posts.append(post_message)
      posts.append(document.createElement('br'))
      posts.append(created_at)
      document.body.append(posts)
  })
});
  return (
    <div class="container">

    </div>
    )
}

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