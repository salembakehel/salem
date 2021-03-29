class UsersController < ApplicationController
  def index
    render( json: f(User.all))
  end
end
