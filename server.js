const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
const errorhandler = require('errorhandler');

const routes = require('./routes');

global.store = {};
store.posts = [];

let app = express();

app.use(bodyParser.json());
app.use(logger('dev'));
app.use(errorhandler());

// ------------Posts APIs---------------------------

app.get('/posts', (req, res) => {
    routes.posts.getPosts(req, res);
});

app.post('/posts', (req, res) => {
    routes.posts.addPost(req, res);
});

app.put('/posts/:postId', (req, res) => {
    routes.posts.updatePost(req, res);
});

app.delete('/posts/:postId', (req, res) => {
    routes.posts.removePost(req, res);
});

// -------------Comments APIS-----------------------

app.get('/posts/:postId/comments', (req, res) => {
    routes.comments.getComment(req, res);
});

app.post('/posts/:postId/comments', (req, res) => {
    routes.comments.addComment(req, res);
});

app.put('/posts/:postId/comments/:commentId', (req, res) => {
    routes.comments.updateComment(req, res);
});

app.delete('/posts/:postId/comments/:commentId', (req, res) => {
    routes.comments.removeComment(req, res);
});

app.listen(3000);
