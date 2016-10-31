# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name, as: :string
  field :email, as: :string
  field :note, as: :text

  # attr_reader :id
  # attr_accessor :first_name, :last_name,:email, :note
  #
  # @@contacts = []
  # @@id = 1
  #
  #
  # # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
  #   @note = note
  #
  #   @id = @@id
  #   @@id += 1


  # end

  # This method should call the initializer,
  # store the newly created contact, and then return it
#   def self.create(first_name, last_name, email, note)
#     new_contact = Contact.new(first_name, last_name, email, note)
#     @@contacts << new_contact
#     return new_contact
#
# binding.pry
#   end
#
#   # This method should return all of the existing contacts
#   def self.all
#     @@contacts
#   end
#
#   # This method should accept an id as an argument
#   # and return the contact who has that id
#   def self.find(id)
#      @@contacts.each do |contact|
#
#     if id.to_i == contact.id
#       return contact
#      end
#   end
#
# end
#   # This method should allow you to specify
#   # 1. which of the contact's attributes you want to update
#   # 2. the new value for that attribute
#   # and then make the appropriate change to the contact
#   def update (x, new_value)
#
#     if x == "first_name"
#       self.first_name = new_value
#
#     elsif x == "last_name"
#       self.last_name = new_value
#
#     elsif x == "email"
#       self.email = new_value
#
#     elsif x == "note"
#       self.note = new_value
#
#     end
#
#   end
#
#   # This method should work similarly to the find method above
#   # but it should allow you to search for a contact using attributes other than id
#   # by specifying both the name of the attribute and the value
#   # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
#   def self.find_by(search_by, search_for)
#
#     @@contacts.each do |contact|
#
#       if search_by == "first_name"
#
#       	if search_for == contact.first_name
#         return contact
#     	end
#
#       elsif search_by == "last_name"
#       	if search_for== contact.last_name
#         return contact
#     	end
#
#       elsif search_by =="email"
#       	if search_for == contact.email
#         return contact
#     	end
#
#       elsif search_by == "note"
#       	if search_for == contact.note
#         return contact
#     	end
#
#       end
#     end
#   end
#
#   # This method should delete all of the contacts
#   def self.delete_all
#
#     @@contacts = []
#
#   end

  def full_name
    "#{first_name} #{last_name}"

  end

  # This method should delete the contact
#   # HINT: Check the Array class docs for built-in methods that might be useful here
#   def delete
#
#     @@contacts.delete(self)
#
#   end
#
#   # Feel free to add other methods here, if you need them.
 end

 Contact.auto_upgrade!
