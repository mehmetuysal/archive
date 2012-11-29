# encoding: UTF-8
ActiveAdmin.register FileStatus do
    menu :label => "Döküman Durumları"
    config.filters = false

   index do                            
    column "Durum Adı", :file_status_name       
    column "Açıklama",:description             
    default_actions                
  end  


    form do |f|
      f.inputs "Genel Bilgiler" do
        f.input :file_status_name, :label=> "Durum Adı"
        f.input :description, :label => "Açıklama"
      end
      f.buttons
    end   

    show do |file_status|
      attributes_table do
        row("Döküman Durumu") {file_status.file_status_name} 
        row("Açıklama") { file_status.description }
      end
      active_admin_comments
    end         
end
