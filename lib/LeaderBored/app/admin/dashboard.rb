ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Leaderboards" do
          ul do
            Leaderboard.last(10).map do |leaderboard|
              li link_to(leaderboard.name, admin_leaderboard_path(leaderboard))
            end
          end
        end
        panel "Recent Scores" do
          ul do
            Score.last(10).map do |score|
              li link_to("#{score.leaderboard.name}:#{score.score}", admin_leaderboard_path(score.leaderboard))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end
end

private
def authenticate_admin_user!
  current_user && (current_user.admin? || current_user.root?)
end
