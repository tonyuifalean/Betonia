class Contactus < ActiveRecord::Base
   
   attr_accessible :nume, :telefon, :email, :mesaj
   


   validates_presence_of :nume, :message => "Camp obligatoriu!"
   validates_presence_of :telefon, :message => "Camp obligatoriu!"
   validates_presence_of :email, :message => "Camp obligatoriu!"
   validates_presence_of :mesaj, :message => "Camp obligatoriu!"
   validates_length_of :nume, :maximum => 25, :too_long => "Maxim 25 caractere!"
   validates_length_of :telefon, :minimum => 10, :too_short => "Minim 10 cifre!"
   validates_length_of :email, :maximum => 25, :too_long => "Maxim 25 caractere!"
   validates :telefon, :phone_format => true 
   validates :email, :email_format => true
                             
   
   def self.search(search)
               if search
                        where('nume LIKE ?', "%#{search}%")
               else
                        scoped
               end
   end

end
