class ApplicationController < ActionController::Base
    
    def hello
    render html: "hello pets"
    end
end
