class PagesController < ApplicationController
  
  
  def home;end
  
  def about
    @members = ["Manon", "Anais", "George", "Talina", "Matt"]

    
    if params[:member]
      @members = @members.select { |member| member.downcase.start_with?(params[:member]) }
    end

  end

  def contact;end

  
end
