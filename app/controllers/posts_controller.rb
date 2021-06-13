class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc')
        render 'posts/index' #デフォルトのため省略可能
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
    end

end
