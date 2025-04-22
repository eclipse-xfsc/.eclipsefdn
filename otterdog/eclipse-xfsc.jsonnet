local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.xfsc', 'eclipse-xfsc') {
  settings+: {
    description: "",
    name: "XFSC Project",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
       
    orgs.newRepo('aries-integration-tests'){

    },
    orgs.newRepo('aries-ssi-agent'){

    },
    orgs.newRepo('cam'){

    },
    orgs.newRepo('cloud-event-provider'){

    },
    orgs.newRepo('configuration-service'){

    },
    orgs.newRepo('credential-storage-service'){

    },
    orgs.newRepo('crypto-provider-core'){

    },
    orgs.newRepo('crypto-provider-hashicorp-vault-plugin'){

    },
    orgs.newRepo('crypto-provider-local-plugin'){

    },
    orgs.newRepo('crypto-provider-luna-cloud-hsm-plugin'){

    },
    orgs.newRepo('crypto-provider-service'){

    },
    orgs.newRepo('custom-policy-agent'){

    },
    orgs.newRepo('data-contract-transaction'){

    },
    orgs.newRepo('data-exchange-logging'){

    },
    orgs.newRepo('deployment'){

    },
    orgs.newRepo('dev-ops'){

    },
    orgs.newRepo('did-core'){

    },
    orgs.newRepo('didcomm-v2-connector'){

    },
    orgs.newRepo('docs'){

    },
    orgs.newRepo('email-service'){

    },
    orgs.newRepo('event-log-service'){

    },
    orgs.newRepo('integration'){

    },
    orgs.newRepo('ipfs-document-manager'){

    },
    orgs.newRepo('landingpage') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('microservice-core-go'){

    },
    orgs.newRepo('nats-message-library'){

    },
    orgs.newRepo('notarization-service'){

    },
    orgs.newRepo('oid4-vci-authorization-bridge'){

    },
    orgs.newRepo('oid4-vci-credential-retrieval-service'){

    },
    orgs.newRepo('oid4-vci-credential-verification-service'){

    },
    orgs.newRepo('oid4-vci-issuer-dummycontentsigner'){

    },
    orgs.newRepo('oid4-vci-issuer-service'){

    },
    orgs.newRepo('oid4-vci-vp-integration-tests'){

    },
    orgs.newRepo('oid4-vci-vp-library'){

    },
    orgs.newRepo('oid4-vci-vp-well-known-service'){

    },
    orgs.newRepo('orchestration-engine'){

    },
    orgs.newRepo('orchestrators'){
      gh_pages_build_type: "workflow",
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('org.eclipse.xfsc') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "XFSC",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/docs",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "None",
            "gh-pages",
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('redis-cache-service'){

    },
    orgs.newRepo('rego-policies'){

    },
    orgs.newRepo('sd-creation-wizard-api'){

    },
    orgs.newRepo('sd-creation-wizard-frontend'){

    },
    orgs.newRepo('sd-jwt-service'){

    },
    orgs.newRepo('sd-schemas'){

    },
    orgs.newRepo('sd-validation-api'){

    },
    orgs.newRepo('ssi-jwt'){

    },
    orgs.newRepo('ssi-vdr-core'){

    },
    orgs.newRepo('ssi-vdr-ipfs'){

    },
    orgs.newRepo('statuslist-service'){

    },
    orgs.newRepo('task-sheduler'){

    },
    orgs.newRepo('train-dns-trust-zone-manager'){

    },
    orgs.newRepo('train-integration-tests'){

    },
    orgs.newRepo('train-shared'){

    },
    orgs.newRepo('train-trust-framework-manager'){

    },
    orgs.newRepo('train-trust-validator'){

    },
    orgs.newRepo('trusted-info-hub'){

    },
    orgs.newRepo('workshops'){

    },

  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}