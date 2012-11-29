# encoding: UTF-8
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

    form do |f|
      f.inputs "Genel Bilgiler" do
        f.input :name, :label=> "Birim Adı"
        f.input :location, :label => "Lokasyon"
        f.input :user, :label=> "Sorumlu"
        f.input :description, :label => "Açıklama"        
      end
      f.buttons
    end   

    show do |unit|
      attributes_table do
        row("Birim Adı") {unit.name}
        row("Sorumlu") { unit.user }
        row("Lokasyon") { unit.location }   
        row("Açıklama") { unit.description }
      end
      active_admin_comments
    end         
end
