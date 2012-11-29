ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end



      columns do

          column do
            panel "Son Eklenen Dökümanlar" do
              table_for Document.order('id desc').limit(10).each do |doc|
                column("Döküman Adı")    {|doc| link_to(doc.document_name, admin_document_path(doc)) }
                column("Birim") {|doc| doc.unit }
                column("Şube"){|doc| doc.branch }
                column("Dosya No"){|doc| doc.file_no}
                column("Durum"){|doc| doc.file_status }
                
              end
              strong { link_to "Tüm Dökümanlar", admin_documents_path }
            end

          end

          column do
            panel "Birimler" do
              table_for Unit.order('id desc').limit(10).each do |doc|
                column("Birim Adı")    {|doc| link_to(doc.name, admin_unit_path(doc)) }
                column("Sorumlu") {|doc| doc.user }
                column("Açıklama") {|doc| doc.description }
              end
              strong { link_to "Tüm Birimler", admin_units_path }
            end
          end
    end

     columns do
         column do
            panel "Şubeler" do
              table_for Branch.order('id desc').limit(10).each do |doc|
                column("Şube Adı")    {|doc| link_to(doc.name, admin_branch_path(doc)) }
               column("Sorumlu") {|doc| doc.user }
                column("Açıklama") {|doc| doc.description }
              end
              strong { link_to "Tüm Şubeler", admin_branches_path }
            end
          end

          column do
            panel "Kullanıcılar" do
              table_for AdminUser.order('id desc').limit(10).each do |doc|
                column("E-Postra")  {|doc| link_to(doc.email, admin_admin_user_path(doc)) } 
                column("Son Giriş") {|doc| doc.last_sign_in_at }
                column("Giriş Sayısı") {|doc| doc.sign_in_count }
                column("Oluşturulma") {|doc| doc.created_at }
              end
              strong { link_to "Tüm Kullanıcılar", admin_admin_users_path }
            end
          end          

      end

  end # content

end
