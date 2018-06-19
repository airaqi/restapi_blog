module.exports = {
    getComment(req, res) {
        res.status(200).send(store.posts[req.params.postId].comments);
    },

    addComment(req, res) {
        let id = store.posts[req.params.postId].comments.length;
        let comment = {text: req.body.text};

        store.posts[req.params.postId].comments.push(comment);
        
        res.status(201).send({id: id});
    },

    updateComment(req, res) {
        Object.assign(store.posts[req.params.postId].comments[req.params.commentId], req.body);
        res.status(204).send();
    },

    removeComment(req, res) {       
        store.posts[req.params.postId].comments.splice(req.params.commentId, 1);
        res.status(204).send();
    }
};
