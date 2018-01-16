class ContactsController < ApplicationController
  def one_contact_method
    contact = Contact.first
    render json: {first_name: contact.first_name,
                  last_name: contact.last_name,
                  email: contact.email,
                  phone_number: contact.phone_number
    }
      
  end
  def all_contacts
    contacts = Contact.all
    display_contacts = []
    contacts.each do |contact|
      contact = {first_name: contact.first_name,
                  last_name: contact.last_name,
                  email: contact.email,
                  phone_number: contact.phone_number} 
      display_contacts << contact
    end
    render json: display_contacts
    
  end
end
