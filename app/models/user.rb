class User < ActiveRecord::Base
  belongs_to :programming_language
  belongs_to :company

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

  def has_full_stats?
    thoughts && salary && programming_language
  end

end