class UserController < ApplicationController
def index
@users=User.all
end
def show
@users=User.find(param[:id])
redirect_to user_path(@users)
end
def new
@users=User.new
end
def create
@users=User.create(param[:user])
redirect_to user_path(@user)
end

