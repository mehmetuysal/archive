ActiveAdmin.register Document do
  scope :all, :default => true
  scope :active
  scope :passive  

  menu :label => "Dökümanlar", :priority => 2

		filter :file_status, :label => "Döküman Durumu"
        filter :unit, :label => "Birim"
        filter :branch, :label => "Şube"
      	filter :document_name, :label => "Döküman Adı"
        filter :file_type, :label => "Dosya Tipi"      	
      	filter :file_no, :label => "Dosya No"
      	filter :date, :label => "Tarih"      	
      	filter :description, :label => "Açıklama"
        filter :destruction_date, :label => "İmha Tarihi"

  index do                            
    #column "Döküman Adı", :name    
    column "Durum", :file_status_id                 
    column "Arşiv No",:archive_no        
    column "Dosya No",:file_no           
    column "Açıklama",:description             
    default_actions                   
  end    


    form do |f|
      f.inputs "Durum" do
		f.input :file_status, :label => "Döküman Durumu"
      end    	
      f.inputs "İlişki" do
        f.input :unit, :label => "Birim"
        f.input :branch, :label => "Şube"
      end
      f.inputs "Detay" do
      	f.input :document_name, :label => "Döküman Adı"
        f.input :file_type, :label => "Dosya Tipi"      	
      	f.input :file_no, :label => "Dosya No"
      	f.input :date, :as=>:datepicker, :label => "Tarih"      	
      	f.input :description, :label => "Açıklama"
      end      
      f.inputs "İmha" do
        f.input :destruction_date, :as => :datepicker, :label => "İmha Tarihi"
        f.input :decisiton, :label=> "Karar"
        f.input :process, :label => "Süreç"
      end
      f.buttons
    end

end
