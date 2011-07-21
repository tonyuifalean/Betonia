class Contact < ActiveRecord::Base
      
      attr_accessible :first_name, :last_name, :email, :phone, :qm
      
      EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i


      validates :first_name, :presence => true, :length => { :maximum => 25 }
      validates :last_name, :presence => true, :length => { :maximum => 50 }
      validates :email, :presence => true, :length => { :maximum => 100 },
                :email_format => true
      validates :phone, :presence => true, :length => { :minimum => 10 },
                :phone_format => true
      validates :qm, :presence => true
                             
      

      def self.search(search)
               if search
                        where('first_name LIKE ?', "%#{search}%")
               else
                        scoped
               end
      end


end
