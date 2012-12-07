class PostsController < ApplicationController
include Devise::Controllers::Helpers

#scope:fullaccess, where('text=?', current_user.email)


def new
  @post = Post.new
end
 
def show
	#if (params[:id] != "new" and params[:id] != "fulllist")
		@post = Post.find(params[:id])
	#else
		#@post = Post.first
	#end
end
 
def create
  @post = Post.new(params[:post])
 
  if @post.save
    redirect_to action: :show, id: @post.id
  else
    render 'new'
  end
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
 
  if @post.update_attributes(params[:post])
    redirect_to action: :show, id: @post.id
  else
    render 'edit'
  end
end

def index
  #@posts = Post.all
  @posts = Post.where('posteremail = ?', current_user.email)
end

def fulllist
  @posts = Post.all
  #render 'fulllist'
end

def update
  @post = Post.find(params[:id])
 
  if @post.update_attributes(params[:post])
    redirect_to action: :show, id: @post.id
  else
    render 'edit'
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to action: :index
end

end
