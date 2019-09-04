module ApplicationHelper

    def servicio (tp_servicio, idtipodeservicio = 0)
        if tp_servicio ==  'mesoterapia'
            link_to 'Volver - Mesoterapia', mesoterapia_path, class:'btn btn-primary'
        elsif tp_servicio ==  'microdermoabrasion'   
            link_to 'Volver - Micro Dermo abrasion', microdermoabrasion_path,class:'btn btn-primary'
        elsif tp_servicio ==  'exfoliacionaclarante'   
            link_to 'Volver - Exfoliacion Aclarante', exfoliacionaclarante_path,class:'btn btn-primary'
        elsif tp_servicio ==  'ultracavitacion'   
            link_to 'Volver - Ultra Cavitacion', ultracavitacion_path,class:'btn btn-primary'
        elsif tp_servicio ==  'drenajelinfatico'   
            link_to 'Volver - Drenaje Linfatico', drenajelinfatico_path,class:'btn btn-primary'
        elsif tp_servicio ==  'radiofrequencia'   
            link_to 'Volver - Radio Frequencia', radiofrequencia_path,class:'btn btn-primary'
        else
        link_to 'Volver - Inizio', root_path, class:'btn btn-primary'     
        end
    end

    # def servicio (tp_servicio)
    #     puts 'mystring' + tp_servicio
    # end
end

