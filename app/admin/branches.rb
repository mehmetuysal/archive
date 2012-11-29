ActiveAdmin.register Branch do


   index do                            
    column "Şube Adı", :name                     
    column "Lokasyon",:location        
    column "Sorumlu",:user           
    column "Açıklama",:description             
    default_actions                
  end    

      menu :label => "Şubeler" ,:priority => 4
       config.filters = false
end
