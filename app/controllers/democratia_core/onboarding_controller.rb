# frozen_string_literal: true

module ::DemocratiaCore
  class OnboardingController < ::ApplicationController
    requires_login

    def show
      render json: {
        onboarding_completed: current_user.custom_fields[
          DEMOCRATIA_ONBOARDING_COMPLETED_FIELD
        ] == true,
      }
    end
  end
end
