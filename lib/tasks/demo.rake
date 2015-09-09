require 'factory_girl'

  namespace :demo do
    task seed: :environment do
      Timecop.freeze(10.days.ago) do
        FactoryGirl.create(
          :user,
          username: 'admin',
          email: 'admin@wild.land',
          password: 'Password'
        )
        @main_author = FactoryGirl.create(
          :user,
          username: 'author',
          email: 'author@wild.land',
          password: 'Password'
        )
      end
      25.times do
        Timecop.freeze(rand(1..7).days.ago) do
          FactoryGirl.create(:article, user: @main_author)
        end
      end
    end
  end
