class AchievementUnlocksController < InheritedResources::Base

  private

    def achievement_unlock_params
      params.require(:achievement_unlock).permit(:player_id, :progression, :status)
    end
end

