class UsersController < ApplicationController
  devise :omniauthable, :omniauth_providers => [:google_oauth2]
end
