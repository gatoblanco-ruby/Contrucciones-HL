class AdminController < ApplicationController
    before_action  :authenticate_administrator!
   def index
    @pipas = Pipa.all
   end 
end
 