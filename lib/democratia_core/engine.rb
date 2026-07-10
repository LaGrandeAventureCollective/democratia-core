# frozen_string_literal: true

module ::DemocratiaCore
  PLUGIN_NAME = "democratia-core"

  class Engine < ::Rails::Engine
    engine_name "democratia_core"
    isolate_namespace DemocratiaCore
  end
end
