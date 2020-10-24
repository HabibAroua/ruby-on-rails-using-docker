class TestController < ApplicationController
  def index
    @id = params['id']
		@page = params['page']
  end
  
  def welcome
      @x = 'Habib'
  end
  
  def main
  end
end