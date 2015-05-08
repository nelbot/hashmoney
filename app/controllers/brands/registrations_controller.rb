class Brands::RegistrationsController < Devise::RegistrationsController
 
 def after_sign_in_path_for(resource)
  redirect_to brands_dashboard_path
 end

 private

 def sign_up_params
   params.require(:brand).permit(:username, :email, :password, :target_industry, :target_hashtag, :target_age_group, :target_demographic, :target_location, :password_confirmation)
 end

 def account_update_params
   params.require(:brand).permit(:username, :email, :password, :password_confirmation, :current_password, :target_industry, :target_hashtag, :target_age_group, :target_demographic, :target_location)
 end
end
