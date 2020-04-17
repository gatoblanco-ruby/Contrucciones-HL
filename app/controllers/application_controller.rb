class ApplicationController < ActionController::Base
    
    def hello
    render html: "Esta es la pagina principal"
    end
end
