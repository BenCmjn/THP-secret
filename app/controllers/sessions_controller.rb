class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	puts "log SUCCESS"
    	log_in user
    	redirect_to secret_path
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'

    end
  end

  def destroy
  end
end
