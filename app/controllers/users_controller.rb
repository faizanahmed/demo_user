class UsersController < ApplicationController
    	

    	def new
    		@user=User.new

    	end


    	def create
    	
    		if @user=User.create(params[:user].permit(:email,:name))
    			redirect_to user_path(@user)
    		end
    	end

    	def show 
    		@user=User.find(params[:id])
    	end
    	
    	def index
    		@user=User.all
    	end
    	def edit
    		@user=User.find(params[:id])
    	end
    	def update
    		@user=User.find(params[:id])
    		if @user.update(params[:user].permit(:emial,:name))
    			redirect_to user_path(@user)
    		end
    	end
    	def destroy
    		@user=User.find(params[:id])
    		@user.destroy
    		redirect_to @user
    	end

end
