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
      description:"Integration tests for Organizational Credential Manager on behave basis (Hyperledger/Credo)",
      topics:["aries","integration","bdd","gherkin","behave","python","ocm"],
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
      description:"Hyperledger SSI Agent on Crede Framework Basis",
      topics:["aries","ssi","agent","aries-rfc","rfc","hyperleder","ocm","credo","animo"],
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
      description:"This project contains the reference implementation of the Gaia-X Continuous Automated Monitoring component.",
      topics:["monitoring","microservice","continious","automated","golang"],
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
      description:"This library is used for abstracting messaging. The purpose of this library shall be to decapsulate message bus technologies from their usage. So it's doesnt matter if nats, kafka or anything else supported is used.",
      topics:["cloud-events","eventing","golang"],
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
      description:"The configuration service provides an simple http endpoint which provides straight forward config map values as json files. It predefines no ingress so you have to declare one in the values.yaml file under ingress section.",
      topics:["configuration","kubernetes","config-map","rest","golang"],
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
      description:"The Storage Service is a service made for storing credentials and presentations. All content is stored cryptographically protected by a crypto engine",
      topics:["json-ld","json","jwe","cassandra","credentials","vc","vp","provenance-proof","presentation-definition","dif","golang"],
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
      description:"This package is a library to abstract crypto providers for go. The providers can be loaded during startup by adding the respective module in the local folder.",
      topics:["jwt","pem","random","ec-dsa","rsa","encryption","decryption","signing","verification","golang"],
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
      description:"This plugin provides key usage by using the hashicorp vault transit engine.",
      topics:["jwt","pem","random","ec-dsa","rsa","encryption","decryption","signing","verification","transit-engine","hashicorp","vault","golang"],
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
      description:"This plugin provides key usage by using the internal golang crypto engine.",
      topics:["jwt","pem","random","ec-dsa","rsa","encryption","decryption","signing","verification", "golang"],
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
      description:"This plugin provides key usage by using the luna hsm.",
      topics:["jwt","pem","random","ec-dsa","rsa","encryption","decryption","signing","verification", "golang","hsm","luna","x509","pcks11"],
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
      description:"Crypto Provider service provides REST APIs for creating Verifiable Credentials (VC) and Verifiable Presentations (VP) in the W3C credential format. It also provides more generic endpoints for signing arbitrary data, for adding cryptographic proofs to existing VC/VP and for fetching public keys necessary for signature verification.",
      topics:["jwt","pem","random","ec-dsa","rsa","encryption","decryption","signing","verification", "golang","crypto","vp","vc","did-document","did","jwks","did-configuration","x509","tsa"],
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
      description:"The policy service provides REST API to evaluate/execute OPA policies written in the Rego language.",
      topics:["rego","opa","golang","goa","pdp","tsa"],
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
      description:"Service for Data Contract Exchange",
      topics:["data-contract","exchange"],
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
      description:"The XFSC Service Data Exchange Logging Service (GX-DELS) provides evidence that data has been (a) submitted and (b) received and (c) rules and obligations (Data Usage Policies) were enforced or violated",
      topics:["data-exchange","nodejs","policy"],
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
      description:"This repo contains helm charts for deployment and integration",
      topics:["kubernetes","helm","docker","integration"],
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
      description:"This repo contains scripts, helm charts, ci templates and docker files",
      topics:["kubernetes","helm","docker","dev-ops","ci-cd"],
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
      description:"Implements the basics of did core specification e.g. did documents for very basic setup of verification methods and it's resolving.",
      topics:["did","w3c","golang","ssi"],
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
      description:"This repo contains a didcomm v2 mediator implementation for cloud events messaging.",
      topics:["nats","didcomm-v2","golang","ssi"],
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
      description:"XFSC Documentation",
      topics:["architecture","docs","xfsc","xfsc-spec"],
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
      description:"This repo contains an simple email service which is integrated in nats",
      topics:["nats","email","smtp","golang"],
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
      description:"This repo contains an nats event logger service.",
      topics:["nats","golang","cloud-events"],
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
      description:"Integration Repo for more integrated use cases",
      topics:["xfsc","argocd","helm"],
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
      description:"A service which stores simple documents to IPFS nodes",
      topics:["ifps","golang","vdr","verifiable-data-registry"],
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
      description:"Repo for the XFSC Landingpage",
      topics:["landingpage","xfsc","xfsc-spec","specification"],
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
      description:"The microservice core is a small library which contains helper functions and basic setups for golang microservices. It's just a minimum set for messaging, rest and some helpers, but not so mightful as Goa",
      topics:["gin","golang"],
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
      description:"This library contains default golang message structures and types which are used by the micro services as data contract for communication.",
      topics:["golang","nats","messaging"],
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
      description:"The purpose of the Notarization API is to provide an authorization officer a software component to attest given master data and transform it to a digital verifiable credential representation.",
      topics:["java","quarkus","rabbit-mq","eidas","notarization","vc","vp","signing"],
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
      description:"The pre authorization provides the new grant type for the OID4VCI flow to support issuing operations with the pre authorization flow. This bridge can be later configured in the open id configuration under the type urn:ietf:params:oauth:grant-type:pre-authorized_code which is defined in the OID4VCI Spec ",
      topics:["golang","vc","vp","oauth2","oid4vci","pre-authorized-code"],
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
      description:"The pre authorization provides the new grant type for the OID4VCI flow to support issuing operations with the pre authorization flow. This bridge can be later configured in the open id configuration under the type urn:ietf:params:oauth:grant-type:pre-authorized_code which is defined in the OID4VCI Spec ",
      topics:["golang","vc","vp","oauth2","oid4vci","oidc"],
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
      description:"OID4VP service",
      topics:["oid4vp","ocm-w-stack"], 
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
      description:"OID4VC Issuer Service Frame dummy plugin (OCM W-Stack)",
      topics:["oid4vci","ocm-w-stack"], 
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
      description:"OID4VC Issuer Service Frame (OCM W-Stack)",
      topics:["oid4vci","ocm-w-stack"], 
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
      description:"OCM W-Stack integration tests",
      topics:["oid4vci","behave","python"], 
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
      description:"This library contains default golang message structures and types which are used by the micro services as data contract for communication. OCM W-Stack",
      topics:["oid4vci","oid4vp","oidc","ocm-w-stack"], 
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
      description:"The well known service implements the well known issuer metadata part of the OID4VCI protocol. OCM W-Stack",
      topics:["oid4vci","oidc","ocm-w-stack"], 
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
      description:"An improved Low-code Orchestration engine for event-driven applications with added enhancements and features optimized for XFSC Toolbox.",
      topics:["node-red","orchestration"], 
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
      description:"Meta-orchestrator, Terraform and TOSCA orchestrators, IaC templates storage and server, orchestrator IaC examples and documentation.",
      topics:["terraform"], 
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
      description:"Cache service exposes HTTP interface for working with Redis (TSA)",
      topics:["opa","redis"], 
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
      description:"Repo for basic rego policies",
      topics:["rego","policies"], 
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
      description:"Backend service to convert an input shacl shape into JSON form for the frontend service.",
      topics:["self-description"], 
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
      description:"The Gaia-X Framework provides specifications and Open Source Software addressing the key building blocks to create data and infrastructure ecosystems.",
      topics:["self-description"], 
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
      description:"This service just creates SD-JWT encodings with disclosures and verifies it. Keypair is just a dummy one for signature, dont use it as standard and resign the token always.",
      topics:["sd-jwt","open-wallet-foundation","selective-disclosure"],
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
      description:"This repository contains schema and documentation for developing compliant Gaia-X Credentials (formerly called Gaia-X Self-Descriptions / SDs).",
      topics:["python","self-description"],
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
      description:"API for validating Self Descriptions",
      topics:["java","rest","self-description"],
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
      description:"This library contains common JWT extensions for usage in SSI context.",
      topics:["ssi","jwt","golang"],
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
      description:"Verifiable Data Registry provided an interface for storing Decentralised Identifiers (DID documents).The library uses plugin-based architecture, using it as a dependency requires additional steps.",
      topics:["ifps","vdr"],
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
      description:"A plugin implementation of VerifiableDataRegistry interface using Interplanetary Filesystem for storing files. Used by VDR",
      topics:["ifps","vdr"],
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
      description:"The status list service implements the basis for realizing the basic concept of a bit string  lists for OCM W-Stack.",
      topics:["revocation","open-wallet-foundation","jwt-statuslist","bitstring","statuslist-2021","golang"],
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
      description:"The task service provides an HTTP interface for executing asynchronous (HTTP) Tasks and Task lists.",
      topics:["tsa","opa"],
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
      description:"The DNS Zone Management is the component responsible for managing the DNS zone file and used for anchoring the trust framework DID information into the zone file.",
      topics:["train","essif","dnssec","dns"],
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
      description:"This repo contains the TRAIN integration tests",
      topics:["train","essif","dnssec","dns","behave","python","gherkin"],
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
      description:"This repository contains java code shared between several TRAIN projects and used as Git Submodules. ",
      topics:["train","essif","dnssec","dns"],
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
      description:"XFSC Train Trust Framework Manager allows Trust Framework and Trust List Provision. TFM is responsioble for configuring and managing trust frameworks with its corresponding trust lists.",
      topics:["train","essif","dnssec","dns"],
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
      description:"TRAIN provides a trust management infrastructure for XFSC. Trusted Content Resolver service allows Trusted Framework Pointers resolution and verification.",
      topics:["train","essif","dnssec","dns"],
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
      description:"Information Hub service is responsible for exporting and importing policy data wrapped in Verifiable Credentials and Verifiable Presentations.",
      topics:["goa","golang","w3c","vp","vc","tsa"],
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
      description:"Personal Credential Manager Mobile app",
      topics:["pcm-mobile","android","swift","kotlin"],
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
      description:"Personal Credential Manager Mobile Integration Tests",
      topics:["pcm-mobile","bdd"],
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
      description:"Personal Credential Manager Cloud Integration Tests",
      topics:["pcm","bdd","gherkin","behave","python"],
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
      description:"Personal Credential Manager Cloud Plugin backend template",
      topics:["pcm","plugin","golang"],
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
      description:"Personal Credential Manager Cloud Frontend Plugin core",
      topics:["pcm","plugin","golang"],
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
      description:"Personal Credential Manager Cloud Frontend Plugin template",
      topics:["pcm","plugin","react"],
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
      description:"Personal Credential Manager Cloud Account Service which manages the accounts for users.",
      topics:["pcm"],
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
      description:"Personal Credential Manager Cloud Integration Tests",
      topics:["pcm","behave","bdd","gherkin","selenium"],
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
      description:"Personal Credential Manager Cloud Wallet Plugin Discovery.",
      topics:["pcm","kubernetes","k8s","discovery","kong"],
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
      description:"Personal Credential Manager Cloud UI which implements a demo of a OID4VCI/VP cloud wallet.",
      topics:["pcm","oid4vci","vc","vp","oid4vp","react"],
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
