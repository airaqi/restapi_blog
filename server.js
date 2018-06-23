const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
const errorhandler = require('errorhandler');

const routes = require('./routes');
const port = 3000;

// store definition as global variable to be accessable from all modules
global.store = {};
store.posts = [];

let app = express();

app.use(bodyParser.json());

// Validate posted json
app.use((err, req, res, next) => {
    if(err) {
        res.status(400).send(JSON.stringify({"error": "Invalid request data"}, null, 2));
    } else {
        next();
    }
});
app.use(logger('dev'));
app.use(errorhandler());

// ------------Posts APIs---------------------------

app.get('/posts', routes.posts.getPosts);
app.post('/posts', routes.posts.addPost);
app.put('/posts/:postId', routes.posts.updatePost);
app.delete('/posts/:postId', routes.posts.removePost);

// -------------Comments APIS-----------------------
app.get('/posts/:postId/comments', routes.comments.getComment);
app.post('/posts/:postId/comments', routes.comments.addComment);
app.put('/posts/:postId/comments/:commentId', routes.comments.updateComment);
app.delete('/posts/:postId/comments/:commentId', routes.comments.removeComment);

app.listen(port);
