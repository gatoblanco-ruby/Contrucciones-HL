class ApplicationController < ActionController::Base
    
    def hello
    render html: "hello pets, soy el que dirige la pagina"
    end
end
