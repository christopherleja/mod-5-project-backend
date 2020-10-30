class UsersController < ApplicationController
    before_action :authorized, only: [:show]

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(username: params[:username], password: params[:password])
        
        if user.valid?
            session[:user_id] = user.id
            render json: user            
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
end