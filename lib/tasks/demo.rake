require 'factory_girl'

  namespace :demo do
    task seed: :environment do
      FactoryGirl.create(:user,
        username: 'admin',
        email: 'admin@wild.land',
        password: 'Password'
      )
    end
  end
