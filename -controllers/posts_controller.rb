```
class PostsController < ApplicationController
def index
@posts = Post.all
end
def show
@post = Post.find(params[:id])
end
def new
@post = Post.new
end
def create
@post = Post.new(post_params)
if @post.save
redirect_to @post
else
render 'new'
end
end
private
def post_params
params.require(:post).permit(:title, :body)
end
end
```
-FILE END-
-migrations/create_posts.rb
```
class CreatePosts < ActiveRecord::Migration[6.1]
def change
create_table :posts do |t|
t.string :title
t.text :body
t.timestamps
end
end
end