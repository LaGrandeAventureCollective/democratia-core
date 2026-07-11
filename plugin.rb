# frozen_string_literal: true

# name: democratia-core
# about: Core plugin for the Democratia participatory governance platform.
# version: 0.1.0
# authors: La Grande Aventure Collective
# url: https://github.com/LaGrandeAventureCollective/democratia-core
# required_version: 3.3.0
enabled_site_setting :democratia_core_enabled
require_relative "lib/democratia_core/engine"

DEMOCRATIA_ONBOARDING_COMPLETED_FIELD = "democratia_onboarding_completed"
register_user_custom_field_type(DEMOCRATIA_ONBOARDING_COMPLETED_FIELD, :boolean)


after_initialize do
  Rails.logger.info("Democratia Core loaded successfully")
end
