# == Schema Information
#
# Table name: developers
#
#  id                     :bigint           not null, primary key
#  bersonal_website_link  :string
#  bio                    :text
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  facebook_link          :string
#  github_link            :string
#  linkedin_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  stackoverflow_link     :string
#  twitter_link           :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_developers_on_reset_password_token  (reset_password_token) UNIQUE
#  index_developers_on_username              (username) UNIQUE
#
class Developer < ApplicationRecord
  devise :database_authenticatable, :jwt_authenticatable,
         :registerable, jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates :username, presence: true, uniqueness: { case_sensitive: true }
end
