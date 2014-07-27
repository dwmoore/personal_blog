class CreateAdminService
  def call
    user = User.find_or_create_by!(email: 'khundawg@gmail.com') do |user|
    		user.name = 'Dave Moore'
        user.password = 'changeme'
        user.password_confirmation = 'changeme'
        user.admin!
      end
  end
end 
