class PostsController < ApplicationController
    def index
      @posts = Post.all
      @users = User.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      
      @post = Post.new(
           title: params[:post][:title],
           content: params[:post][:content]
          )
           
        if @post.save
            redirect_to'/'
           
        else
           render 'new'
        end
    end
     def edit
      @post = Post.find(params[:id])
     end
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if post.save
            redirect_to("/")
        else
          render("posts/edit")
        end  
        
    end
end
