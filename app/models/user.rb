class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { buyer: 0, admin: 1 }

  has_many :orders, dependent: :nullify

  after_initialize :set_default_role, if: :new_record?

  private

  def set_default_role
    self.role ||= :buyer
  end
end
