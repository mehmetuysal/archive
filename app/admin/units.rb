ActiveAdmin.register Unit do
 
  config.filters = true

  index do                            
    column "Birim Adı", :name                     
    column "Lokasyon",:location        
    column "Sorumlu",:user           
    column "Açıklama",:description             
    default_actions                   
  end    
    menu :label => "Birimler", :priority => 3
     config.filters = false
end
