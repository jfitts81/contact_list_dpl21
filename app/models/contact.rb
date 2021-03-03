class Contact < ApplicationRecord
   has_many :notes, dependent: destroy
   has_one: address, dependent: destroy

   validates :first_name, :last_name, :email, presence:true
   validates :email, uniqueness: true
   validates :age, numericality: {only_integer:, true, greater_than_or_equal_to: 21}


end
