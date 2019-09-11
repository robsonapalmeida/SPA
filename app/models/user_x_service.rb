class UserXService < ApplicationRecord
  belongs_to :service
  
  validates :servicedate, presence: { message: "necessita poner fecha del servicio" }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "el email no es correcto" }
  validate :servicetime_exists
  validate :name_exists
  #validates :servicedate, :uniqueness => {:scope => [:servicedate, :servicetime], message:"Para esse mesmo dia e hora, ja tem um servicio cadastrado."}
  #validate :email_search, :on => :update
  validate :email_search
  
  def servicetime_exists
    if servicetime.strftime("%H") == "00" && servicetime.strftime("%M") == "00"
      errors.add(:servicetime, "Necessita poner el horario")
    end
  end

  def name_exists
    if name == ""  
      errors.add(:name, "Necessita poner el nombre")
    end

    if name.length <= 10  
      errors.add(:name, "el nombre es muy corto")
    end
  end
  
  def service_exists
    if service_id == 0
      errors.add(nil, "Necessita poner el servicio")      
    end 
  end
 
  def email_search
  
    chkexist = UserXService.where("servicedate = ? AND servicetime = ? AND service_id = ?",servicedate, servicetime, service_id)
      if  chkexist[0].nil? == false 
        errors.add(" ", "Ya hay una reserva no mismo día y hora para o servicio ** #{chkexist[0].service.name} ** tienes que elegir otro momento, o contacte al Sr. Xxxxxxx emai:x@gmail.com")
      end  
  end

end
