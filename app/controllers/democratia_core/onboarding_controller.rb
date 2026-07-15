# frozen_string_literal: true

module ::DemocratiaCore
  class OnboardingController < ::ApplicationController
    requires_login
    skip_before_action :preload_json

    def page
      render plain: "Bienvenue dans La Grande Aventure Collective", layout: false
    end

    def show
      render json: {
        onboarding_completed: current_user.custom_fields[
          "democratia_onboarding_completed"
        ] == true,
      }
    end
  end
end
