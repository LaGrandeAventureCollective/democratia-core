# frozen_string_literal: true

DemocratiaCore::Engine.routes.draw do
  get "/onboarding" => "onboarding#page"
  get "/onboarding/status" => "onboarding#show"
end
