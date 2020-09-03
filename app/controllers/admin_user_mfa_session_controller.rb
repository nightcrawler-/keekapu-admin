class AdminUserMfaSessionController < ApplicationController
    
    def new
        @current_admin_user = current_admin_user
      end
      
      def create
        admin_user = current_admin_user
        admin_user.mfa_secret = params[:auth][:mfa_code]
        admin_user.save!
     
        if admin_user.google_authentic?(params[:auth][:mfa_code])
          AdminUserMfaSession.create(admin_user)
          redirect_to '/admin'
        else
          flash[:error] = "Wrong code"
          render :new
        end
    end
end
