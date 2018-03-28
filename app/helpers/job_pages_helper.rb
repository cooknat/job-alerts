module JobPagesHelper
  def user_is_authorised_to_delete?
        current_user && current_user.admin?
   end
end
