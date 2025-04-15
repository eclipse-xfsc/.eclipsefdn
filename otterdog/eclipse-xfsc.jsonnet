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
      topics:["aries","ssi","agent","aries rfc","rfc","hyperleder","ocm","credo","animo"],
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
      topics:["json-ld","json","JWE","cassandra","credentials","VC","VP","Provenance Proof","Presentation Definition","DIF","golang"],
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
      topics:["JWT","PEM","Random","EC-DSA","RSA","Encryption","Decryption","Signing","Verification","golang"],
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
      topics:["JWT","PEM","Random","EC-DSA","RSA","Encryption","Decryption","Signing","Verification","Transit Engine","Hashicorp","Vault","golang"],
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
      topics:["JWT","PEM","Random","EC-DSA","RSA","Encryption","Decryption","Signing","Verification", "golang"],
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
      topics:["JWT","PEM","Random","EC-DSA","RSA","Encryption","Decryption","Signing","Verification", "golang","HSM","Luna","X509","PCKS#11"],
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
      topics:["JWT","PEM","Random","EC-DSA","RSA","Encryption","Decryption","Signing","Verification", "golang","crypto","VP","VC","DID Document","DID","JWKS","DID Configuration","X509","TSA"],
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
      description:"The policy service provides REST API to evaluate/execute OPA policies written in the Rego language. The policy engine is extended with custom functions available for use through the Rego runtime during policy execution. The service also provides endpoints for exporting and importing policy bundles, for subscribing for policy changes and endpoints for policy administration (e.g. listing policies, lock/unlock specific policy).",
      topics:["Rego","OPA","Open Policy Agent","golang","goa","policy decision"],
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
      topics:["Data Contract","Exchange"],
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
      topics:["Data Exchange","nodejs","policy"],
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
      topics:["kubernetes","helm","docker","dev-ops","ci/cd"],
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
      topics:["nats","didcomm v2","golang","ssi"],
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
      topics:["architecture","docs","xfsc","xfsc spec"],
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
      topics:["xfsc","ArgoCD","helm"],
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
      topics:["ipfs","golang","VDR","verifiable data registry"],
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
      topics:["landingpage","xfsc","xfsc spec","specifcation"],
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
      topics:["java","quarkus","rabbit-mq","EIDAS","notarization","VC","VP","signing"],
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
      topics:["golang","VC","VP","OAuth2","OID4VCI","urn:ietf:params:oauth:grant-type:pre-authorized_code","Pre-Authorized Code"],
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
      topics:["golang","VC","VP","OAuth2","OID4VCI","OIDC"],
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
      description:"Information Hub service is responsible for exporting and importing policy data wrapped in Verifiable Credentials and Verifiable Presentations.",
      topics:["goa framework","goa","golang","W3C","VP","VC","TSA"],
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
      topics:["PCM mobile","android","swift","kotlin"],
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
      topics:["PCM mobile","bdd"],
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
      topics:["PCM","bdd","gherkin","behave","python"],
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
      topics:["PCM","plugin","golang"],
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
      topics:["PCM","plugin","golang"],
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
      topics:["PCM","plugin","react"],
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
      topics:["PCM"],
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
      topics:["PCM","behave","bdd","gherkin","selenium"],
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
      topics:["PCM","kubernetes","k8s","discovery","kong"],
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
      topics:["PCM","OID4VCI","VC","VP","OID4VP","react"],
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
