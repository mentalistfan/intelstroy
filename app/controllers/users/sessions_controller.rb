class Users::SessionsController < Devise::SessionsController
  before_filter :configure_sign_in_params, only: [:create]
  #prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  #prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy, :show]
  # GET /resource/sign_in
   def new
     super
   end

  # POST /resource/sign_in
   def create
     super
   end

  # DELETE /resource/sign_out
   def destroy
     super
   end

   protected

  # You can put the params you want to permit in the empty array.
   def configure_sign_in_params
     devise_parameter_sanitizer.for(:sign_in) << :attribute
   end
end
