module.exports = {

    // Get all posts
    getPosts(req, res) {
        res.status(200).send(JSON.stringify(store.posts, null, 2));
    },

    // Adds a post
    addPost(req, res) {

        // check if object exists
        let index = store.posts.findIndex( (post) => { return post.name === req.body.name; });
        if(index != -1) {
            res.status(409).send(JSON.stringify({"error": "post name is already avaliable, use another name"}, null, 2));
            return;
        }

        // Get the last id 
        let id = store.posts.length;
        
        // Get the object
        let obj = {
            name: req.body.name,
            url: req.body.url,
            text: req.body.text,
            comments: []
        };
        
        store.posts.push(obj);
        res.status(201).send(JSON.stringify({id: id}, null, 2));
    },

    // Update a post
    updatePost(req, res) {
        Object.assign(store.posts[req.params.postId], req.body);
        res.status(204).send(JSON.stringify(store.posts[req.params.postId], null, 2));
    },

    // Deletes a post
    removePost(req, res) {
        store.posts.splice(req.params.postId, 1);
        res.status(204).send();
    }
};
