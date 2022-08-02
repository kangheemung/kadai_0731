class PostsController < ApplicationController
    def index
      @posts = Post.all
      @post = Post.new
      @post = Post.find_by(params[:id])
     
    end
  
  
    def create
      
      @post = Post.new(
           title: params[:post][:title],
           content: params[:post][:content],
           user_id: @currenr_user.id)
           
          
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
        @post = Post.find_by(id: params[:id])
        @post.title = params[:post][:title]
        @post.content = params[:post][:content]
        
       if @post.save
          redirect_to "posts/#{@post.id}/edit"
       else
          render :edit
       end
    end
end
