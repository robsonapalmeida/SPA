class WelcomeController < ApplicationController
   def index
   end

   def new
     @teste = 'Passou no controller corretamente'   
   end
   
   def calendar
     @Calendar = 'Teste call calendar'
   end
   
end
