class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2, :facebook]

  def self.from_omniauth_facebook(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	  	user.email = auth.info.email
	  	user.name = auth.info.name
	  	user.password = Devise.friendly_token[0,20]
	  	user.photo = auth.info.image
	  end
  end

  def self.from_omniauth_google(auth)
    data = auth.info
    user = User.where(:email => data["email"]).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(name: data["name"],
           email: data["email"],
           password: Devise.friendly_token[0,20],
           photo: data["image"]
        )
    else
	  	user.name = data["name"]
	  	user.password = Devise.friendly_token[0,20]
	  	user.photo = data["image"]
    end
    user
	end


end
