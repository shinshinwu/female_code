class User < ActiveRecord::Base
  has_one :company_staff_stat
  has_one :company, through: :company_staff_stat
  has_many :thoughts
  belongs_to :programming_language

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