ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do

      column do
        panel "Campaign History" do
          table_for CampaignHistory.order("created_at desc").limit(5) do
            column("Name") { |campaign_history| campaign_history.campaign_name }
            column("User") { |campaign_history| campaign_history.admin_user_email }
            column("Date") { |campaign_history| l campaign_history.created_at, :format => :with_weekday }
            column("Budget") { |campaign_history| campaign_history.budget }
            column("Action") { |campaign_history| campaign_history.action }
            column("Platforms") { |campaign_history| campaign_history.message }
          end
        end
      end

    end
  end # content
end
