import { ajax } from "discourse/lib/ajax";
import { withPluginApi } from "discourse/lib/plugin-api";

function initializeDemocratiaOnboarding(api, container) {
  const currentUser = api.getCurrentUser();

  if (!currentUser) {
    return;
  }

  const router = container.lookup("service:router");

  ajax("/democratia/onboarding/status").then((result) => {
    if (!result.onboarding_completed) {
      router.transitionTo("/democratia/onboarding");
    }
  });
}

export default {
  name: "democratia-onboarding",

  initialize(container) {
    withPluginApi((api) => initializeDemocratiaOnboarding(api, container));
  },
};
