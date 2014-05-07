class AccountSetting < Base
  attr_accessible :public_email, :language, :time_zone
  belongs_to :user
end