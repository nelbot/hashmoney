class Brands::RegistrationsController < Devise::RegistrationsController
 
 private

 def sign_up_params
   params.require(:brand).permit(:username, :email, :password, :target_industry, :target_hashtag, :target_age_group, :target_demographic, :target_location, :password_confirmation)
 end

 def account_update_params
   params.require(:brand).permit(:username, :email, :password, :password_confirmation, :current_password, :target_industry, :target_hashtag, :target_age_group, :target_demographic, :target_location)
 end
end
