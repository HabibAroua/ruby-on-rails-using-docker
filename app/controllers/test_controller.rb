class TestController < ApplicationController
	
	skip_before_action :verify_authenticity_token #it may you to make a post from view to Controller 
	def index
	  @id = params['id']
		@page = params['page']
	end
  
	def welcome
	    @x = 'Habib'
	end
  
	def main
	
	end
  
	def post
		 @x = params[:txt_search]
	end
end