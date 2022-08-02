class PostsController < ApplicationController
    def index
      @posts = Post.all
       @post = Post.new
     
    end
  
    def new

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
        @post = Post.find_by(params[:title])
        @post = Post.find_by(params[:content])
     end
    
    def update
          redirect_to("/")
    end
end
