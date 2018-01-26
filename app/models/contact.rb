class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

def friendly_updated_at
  updated_at.strftime("%b %d, %Y%l:%M %p")
end

def full_name
  "#{first_name} #{last_name}"
end

def japan_number
  "+81 #{phone_number}" 
end

end
