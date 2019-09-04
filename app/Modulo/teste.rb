def servicio (tp_servicio, idtipodeservicio = 0)
    
    if tp_servicio ==  "mesoterapia"
        return idtipodeservicio = 1
        puts "Volver - Mesoterapia" 
    elsif tp_servicio ==  "microdermoabrasion"
        return idtipodeservicio = 2
        puts "Volver - Micro Dermo abrasion"
    elsif tp_servicio ==  "exfoliacionaclarante"  
        return idtipodeservicio = 3 
        puts "Volver - Exfoliacion Aclarante"
    elsif tp_servicio ==  "ultracavitacion"
        return idtipodeservicio = 4   
        puts "Volver - Ultra Cavitacion"
    elsif tp_servicio ==  "drenajelinfatico"   
        return idtipodeservicio = 5
        puts "Volver - Drenaje Linfatico"
    elsif tp_servicio ==  "radiofrequencia"
        return idtipodeservicio = 6
        puts "Volver - Radio Frequencia"
    else
       puts "Volver - Inizio"  
       return  idtipodeservicio  
    end
end

