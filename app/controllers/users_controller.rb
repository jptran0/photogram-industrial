class UsersController < ApplicationController
  def show
    #the exclamation point returns a "record not found" error which would show a 404 error instead of an internal 500-type server error which is what we want
    @user = User.find_by!(username: params.fetch(:username))
  end
end
