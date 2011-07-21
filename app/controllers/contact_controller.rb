class ContactController < ApplicationController
    
     layout 'iunielayout'
     
     helper_method :sort_column, :sort_direction
     
     def index
        render('contact_page')
     end
     
     def contact_page
         @contact = Contact.new
     end
   
     def create

               @contact = Contact.new(params[:contact])
               if @contact.save
                  flash[:notice] = "Message saved."
                  redirect_to(:action => "partners", :controller => 'Pages')
               else
                  flash[:notice] = "Message unsaved."
                  redirect_to(:action => "products", :controller => 'Pages')
               end
     end
     
     def show
          
          @contacts = Contact.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
     end
      
     def sort_column
          Contact.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
     end     
     
     def sort_direction
          %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
     end     
end
