ActiveAdmin.register AdminUser do     
  index do                            
    column "E-posta",:email                     
    column "Şu anki girişi",:current_sign_in_at        
    column "Son giriş",:last_sign_in_at           
    column "Giriş yapma sayısı",:sign_in_count             
    default_actions                   
  end                                 

  filter :email    

      menu :label => "Kullanıcılar" , :priority => 10

  form do |f|                         
    f.inputs "Kullanıcı Detayı" do       
      f.input :email,   :label=> "E-posta"               
      f.input :password ,:label=> "Şifre"             
      f.input :password_confirmation  ,:label=> "Şifre tekrar"
    end                               
    f.buttons                         
  end                                 
end                                   
