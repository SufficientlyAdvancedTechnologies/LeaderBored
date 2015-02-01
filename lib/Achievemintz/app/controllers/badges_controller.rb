class BadgesController < InheritedResources::Base

  private

    def badge_params
      params.require(:badge).permit(:achievement_id, :player_id, :multiplier, :status)
    end
end

