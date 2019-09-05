class WelcomeController < UserXServicesController

  def mesoterapia 
    $S_Type = "mesoterapia"  #S_Type is a public variable that set the service type
    $S_selecionado = 1  #S_selecionado,is the service that will be set at the select service field on _form.html.erb at user_x_service views
  end  

  def microdermoabrasion
    $S_Type = "microdermoabrasion"
    $S_selecionado = 2
  end   

  def exfoliacionaclarante
    $S_Type= "exfoliacionaclarante"
    $S_selecionado = 3
  end 

  def ultracavitacion
    $S_Type = "ultracavitacion"
    $S_selecionado = 4
  end  
  
  def drenajelinfatico
    $S_Type = "drenajelinfatico"
    $S_selecionado = 5
  end

  def radiofrequencia
    $S_Type = "radiofrequencia"
    $S_selecionado = 6
  end
 

  def index
    session[:email] = nil
  end

  def new
    @teste = 'Passou no controller corretamente'   
  end
   
  def calendar
    @Calendar = 'Teste call calendar'
  end

  
   
end
