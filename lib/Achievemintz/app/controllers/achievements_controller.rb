class AchievementsController < InheritedResources::Base

  private

    def achievement_params
      params.require(:achievement).permit(:created_by_id, :name, :status)
    end
end

