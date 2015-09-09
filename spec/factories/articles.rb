# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :article do
    user
    title { Forgery('lorem_ipsum').title }
    text { Forgery('lorem_ipsum').paragraphs(3) }
  end
end
