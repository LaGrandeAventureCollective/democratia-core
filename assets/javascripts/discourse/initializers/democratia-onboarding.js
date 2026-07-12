import { ajax } from "discourse/lib/ajax";
import { withPluginApi } from "discourse/lib/plugin-api";

function checkDemocratiaOnboarding(api) {
  const currentUser = api.getCurrentUser();

  if (!currentUser) {
    return;
  }

  if (window.location.pathname.startsWith("/democratia/onboarding")) {
    return;
  }

  ajax("/democratia/onboarding/status").then((result) => {
    if (!result.onboarding_completed) {
      window.location.assign("/democratia/onboarding");
    }
  });
}

export default {
  name: "democratia-onboarding",

  initialize() {
    withPluginApi((api) => {
      checkDemocratiaOnboarding(api);
      api.onPageChange(() => checkDemocratiaOnboarding(api));
    });
  },
};
