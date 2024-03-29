# encoding: UTF-8
ActiveAdmin.register Document do
 
  menu :label => "Dökümanlar", :priority => 2

		filter :file_status, :label => "Döküman Durumu"
        filter :unit, :label => "Birim"
        filter :branch, :label => "Şube"
      	filter :document_name, :label => "Döküman Adı"
        filter :file_type, :label => "Dosya Tipi"      	
      	filter :file_no, :label => "Dosya No"
        filter :archive_no, :label => "Arşiv No"
        filter :shelf_no, :label => "Raf No"
      	filter :date, :label => "Tarih"  
        filter :end_date, :label => "Son Tarih"      	
      	filter :description, :label => "Açıklama"
        filter :destruction_date, :label => "İmha Tarihi"

  index do                            
    #column "Döküman Adı", :name    
    column "Durum", :file_status_id  do |document|
      document.file_status.to_s
    end
    column "Döküman Adı", :document_name            
    column "Arşiv No",:archive_no        
    column "Dosya No",:file_no           
    column "Raf No",:shelf_no
    default_actions                   
  end    


    form do |f|
      f.inputs "Durum" do
		f.input :file_status, :label => "Döküman Durumu"
      end    	
      f.inputs "Bilgi" do
        f.input :unit, :label => "Birim"
        f.input :branch, :label => "Şube"
      end
      f.inputs "Detay" do
      	f.input :document_name, :label => "Döküman Adı"
        f.input :file_type, :label => "Döküman Tipi"      	
      	f.input :file_no, :label => "Dosya No"
      	f.input :date, :as=>:datepicker, :label => "Tarih"      	
        f.input :end_date, :as=>:datepicker, :label => "Son Tarih"   
        f.input :archive_no, :label => "Arşiv No"
        f.input :shelf_no, :label => "Raf No"
      	f.input :description, :label => "Açıklama"
      end      
      f.inputs "İmha" do
        f.input :destruction_date, :as => :datepicker, :label => "İmha Tarihi"
        f.input :decisiton, :label=> "Karar"
        f.input :process, :label => "Süreç"
      end
      f.buttons
    end

    show do |document|
          panel "Döküman Detayı" do
            attributes_table do
              row("Döküman Durumu") {document.file_status} 
            end
            attributes_table do
              row("Birim") {document.unit} 
              row("Şube") {document.branch} 
            end
            attributes_table do
                row("Döküman Durumu") {document.document_name}
                row("Döküman Tipi") {document.file_type}
                row("Dosya No") {document.file_no}
                row("Tarih") {document.date}
                row("Son Tarih") {document.end_date}
                row("Arşiv No") {document.archive_no}
                row("Raf No") {document.shelf_no}
                row("Açıklama") {document.description} 
            end
            attributes_table do
              row("Döküman Durumu") {document.destruction_date} 
              row("Karar") {document.decisiton} 
              row("Süreç") {document.process} 
            end
 

        end                        
      active_admin_comments
    end      

end
