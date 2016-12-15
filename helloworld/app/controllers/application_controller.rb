class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
def hello
    render html: "Sugar, Water, Purple!"
  end
end




