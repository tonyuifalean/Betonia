class NewController < ApplicationController
  
  layout 'betonial'
  
  helper_method :sort_column, :sort_direction
  
  def index
      redirect_to( :action => "betonia", :controller => 'new')     
  end
  
  def betonia
  end

  def caractere
  end

  def contact
      @contactus = Contactus.new
  end
 
  def create
      @contactus = Contactus.new(params[:contactus])
      if @contactus.save
        flash[:notice] = "Va multumim pentru mesajul dumneavoastra! Va vom contacta in cel mai scurt timp." 
        redirect_to( :action => "contact", :controller => 'new')
        
      else
        redirect_to( :action => "despre", :controller => 'new')
      end
  end
  
     
  def despre
  end

  def despre_culori
  end

  def despre_materii_prime
  end

  def parteneri
  end

  def proiecte
  end

  def proiecte_aveti_o_idee
  end

  def proiecte_blaturi
  end

  def proiecte_monstre
  end

  def proiecte_placaje
  end

  def raft
  end

    def show
          
          @contactus = Contactus.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
     end
      
     def sort_column
          Contactus.column_names.include?(params[:sort]) ? params[:sort] : "nume"
     end     
     
     def sort_direction
          %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
     end  
end
