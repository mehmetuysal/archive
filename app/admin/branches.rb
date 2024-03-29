# encoding: UTF-8
ActiveAdmin.register Branch do


   index do                            
    column "Şube Adı", :name                     
    column "Birim",:unit
    column "Sorumlu",:user           
    column "Açıklama",:description             
    default_actions                
  end    


   show do |branch|
      attributes_table do
        row("Birim Adı") {branch.name}
        row("Sorumlu") { branch.user }
        row("Birim") { branch.unit }   
        row("Açıklama") { branch.description }
      end
      active_admin_comments
    end

      menu :label => "Şubeler" ,:priority => 4
       config.filters = false

    form do |f|
      f.inputs "Genel Bilgiler" do
        f.input :name, :label=> "Şube Adı"
        f.input :unit, :label => "Birim"
        f.input :user, :label=> "Sorumlu"
        f.input :description, :label => "Açıklama"        
      end
      f.buttons
    end         
end
