class PostsController < ApplicationController
    def index
      @posts = Post.all
     
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
      
      @post = Post.find_by(params[:id])
     end
    def update
         @post=Post.find_by(id:params [:id])
         @post.title=params[:title]
         @post.content=params[:content]
         @post.save
        redirect_to("/")
        
        
    end
end
