# encoding: UTF-8
ActiveAdmin.register FileType do
    menu :label => "Döküman Tipleri"

   index do                            
    column "Döküman Tipi Adı", :file_type_name       
    column "Açıklama", :description             
    default_actions                
  end    

      config.filters = false   


    form do |f|
      f.inputs "Genel Bilgiler" do
        f.input :file_type_name, :label=> "Döküman Tipi Adı"
        f.input :description, :label => "Açıklama"
      end
      f.buttons
    end    

    show do |file_type|
      attributes_table do
        row("Döküman Tipi") {file_type.file_type_name} 
        row("Açıklama") { file_type.description }
      end
      active_admin_comments
    end         
end
