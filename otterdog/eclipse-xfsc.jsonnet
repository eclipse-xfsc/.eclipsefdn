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
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]  
    },
    orgs.newRepo('aries-ssi-agent'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cam'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-event-provider'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('configuration-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('credential-storage-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('crypto-provider-core'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('crypto-provider-hashicorp-vault-plugin'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('crypto-provider-local-plugin'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('crypto-provider-luna-cloud-hsm-plugin'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('crypto-provider-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('custom-policy-agent'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('data-contract-transaction'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('data-exchange-logging'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('deployment'){ 
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('dev-ops'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('did-core'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('didcomm-v2-connector'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('docs'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('email-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('event-log-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('integration'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('ipfs-document-manager'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('landingpage') {
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('microservice-core-go'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('nats-message-library'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('notarization-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-authorization-bridge'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-credential-retrieval-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-credential-verification-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-issuer-dummycontentsigner'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-issuer-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-vp-integration-tests'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-vp-library'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('oid4-vci-vp-well-known-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('orchestration-engine'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('orchestrators'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('org.eclipse.xfsc') {
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      description: "XFSC",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/docs",
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
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('rego-policies'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('sd-creation-wizard-api'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('sd-creation-wizard-frontend'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('sd-jwt-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('sd-schemas'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('sd-validation-api'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('ssi-jwt'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('ssi-vdr-core'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('ssi-vdr-ipfs'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('statuslist-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('task-sheduler'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('train-dns-trust-zone-manager'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('train-integration-tests'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('train-shared'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('train-trust-framework-manager'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('train-trust-validator'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('trusted-info-hub'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('workshops'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      topics:["react","oauth2","nats","ssi","oidc","nodered","verifiable-credentials","gaia-x","clearing-house","self-description","oid4vci","oid4vp","gaia-x-credentials","compliance-credential"],
      description: "This repository contains XFSC Workshop material and results",
      homepage: "https://eclipse-xfsc.github.io/landingpage/",
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('bdd-executor'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      description: "The BDD executor is an behave execution for Gherkin tests",
      topics: ["bdd","gherkin","integration-testing","test","python","behave"],
      dependabot_alerts_enabled: false,
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('mobile-wallet'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('mobile-wallet-integration-tests'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-wallet-integration-tests'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-wallet-plugin-backend-template'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-wallet-plugin-core'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-wallet-plugin-frontend-template'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },
    orgs.newRepo('cloud-wallet-plugin-deployment'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    },     
    orgs.newRepo('cloud-wallet-account-service'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",

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
      ]
    },
    orgs.newRepo('cloud-wallet-integration-tests'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    }, 
    orgs.newRepo('cloud-wallet-plugin-discovery'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    }, 
    orgs.newRepo('cloud-wallet-web-ui'){
      delete_branch_on_merge: true,
      web_commit_signoff_required: true, 
      allow_merge_commit: true,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
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
      ]
    }
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
