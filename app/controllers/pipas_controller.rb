class PipasController < ApplicationController
    def index
        @pipas = Pipa.all
    end 
    def show
        @pipas = Pipa.sum(:numero)
    end 
end
