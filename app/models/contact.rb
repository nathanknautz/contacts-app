class Contact < ApplicationRecord

def friendly_updated_at
  updated_at.strftime("%b %d, %Y%l:%M %p")
end

def full_name
  "#{first_name} #{last_name}"
end

def japan_number
  "+81 #{phone_number}" 
end

def as_json
  {
   id: id,
   first_name: first_name,
   last_name: last_name,
   full_name: full_name,
   email: email,
   phone_number: japan_number,
   updated_at: friendly_updated_at
  }
end

end
