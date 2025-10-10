local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

local newXFSCRepo(name) = orgs.newRepo(name) {
  delete_branch_on_merge: true,
  web_commit_signoff_required: true,
  allow_merge_commit: true,
  allow_update_branch: false,
  private_vulnerability_reporting_enabled: true,
  code_scanning_default_setup_enabled: true,
  gh_pages_build_type: 'legacy',
  gh_pages_source_branch: 'gh-pages',
  gh_pages_source_path: '/docs',
  workflows+: {
    default_workflow_permissions: 'write',
  },
  environments: [
    orgs.newEnvironment('github-pages') {
      branch_policies+: [
        'gh-pages',
      ],
      deployment_branch_policy: 'selected',
    },
  ],
};

orgs.newOrg('technology.xfsc', 'eclipse-xfsc') {
  settings+: {
    description: '',
    name: 'XFSC Project',
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: 'write',
    },
  },
  secrets+: [
      orgs.newOrgSecret('GITLAB_API_TOKEN') {
          value: "pass:bots/technology.xfsc/gitlab.eclipse.org/api-token",
      },
      orgs.newOrgSecret('GPG_KEY_ID') {
          value: "pass:bots/technology.xfsc/gpg/key_id",
      },
      orgs.newOrgSecret('GPG_PASSPHRASE') {
          value: "pass:bots/technology.xfsc/gpg/passphrase",
      },
      orgs.newOrgSecret('GPG_PRIVATE_KEY') {
          value: "pass:bots/technology.xfsc/gpg/secret-subkeys.asc",
      },
      orgs.newOrgSecret('GPG_PUBLIC_KEY') {
        value: "pass:bots/technology.xfsc/gpg/public-keys.asc",
      },
      orgs.newOrgSecret('HARBOR_HOST') {
          value: "pass:bots/technology.xfsc/harbor/host",
      },
      orgs.newOrgSecret('HARBOR_CREDENTIALS') {
          value: "pass:bots/technology.xfsc/harbor/credentials",
      },
  ],
  _repositories+: [
    newXFSCRepo('aries-integration-tests') {
      description: 'Integration tests for Organizational Credential Manager on behave basis (Hyperledger/Credo)',
      topics: [
        'aries',
        'integration',
        'bdd',
        'gherkin',
        'behave',
        'python',
        'ocm',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('aries-ssi-agent') {
      description: 'Hyperledger SSI Agent on Credo Framework Basis',
      code_scanning_default_languages: ["actions"],
      topics: [
        'aries',
        'ssi',
        'agent',
        'aries-rfc',
        'rfc',
        'hyperleder',
        'ocm',
        'credo',
        'animo',
      ],
    },
    newXFSCRepo('cam') {
      description: 'This project contains the reference implementation of the Gaia-X Continuous Automated Monitoring component.',
      topics: [
        'monitoring',
        'microservice',
        'continious',
        'automated',
        'golang',
        'cam',
      ],
    },
    newXFSCRepo('cloud-event-provider') {
      description: "This library is used for abstracting messaging. The purpose of this library shall be to decapsulate message bus technologies from their usage. So it's doesnt matter if nats, kafka or anything else supported is used.",
      topics: [
        'cloud-events',
        'eventing',
        'golang',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('configuration-service') {
      description: 'The configuration service provides an simple http endpoint which provides straight forward config map values as json files. It predefines no ingress so you have to declare one in the values.yaml file under ingress section.',
      code_scanning_default_languages: ["actions"],
      topics: [
        'configuration',
        'kubernetes',
        'config-map',
        'rest',
        'golang',
      ],
    },
    newXFSCRepo('credential-storage-service') {
      description: 'The Storage Service is a service made for storing credentials and presentations. All content is stored cryptographically protected by a crypto engine',
      topics: [
        'json-ld',
        'json',
        'jwe',
        'cassandra',
        'credentials',
        'vc',
        'vp',
        'provenance-proof',
        'presentation-definition',
        'dif',
        'golang',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('crypto-provider-core') {
      description: 'This package is a library to abstract crypto providers for go. The providers can be loaded during startup by adding the respective module in the local folder.',
      topics: [
        'jwt',
        'pem',
        'random',
        'ec-dsa',
        'rsa',
        'encryption',
        'decryption',
        'signing',
        'verification',
        'golang',
      ],
    },
    newXFSCRepo('crypto-provider-hashicorp-vault-plugin') {
      description: 'This plugin provides key usage by using the hashicorp vault transit engine.',
      topics: [
        'jwt',
        'pem',
        'random',
        'ec-dsa',
        'rsa',
        'encryption',
        'decryption',
        'signing',
        'verification',
        'transit-engine',
        'hashicorp',
        'vault',
        'golang',
      ],
    },
    newXFSCRepo('crypto-provider-local-plugin') {
      description: 'This plugin provides key usage by using the internal golang crypto engine.',
      topics: [
        'jwt',
        'pem',
        'random',
        'ec-dsa',
        'rsa',
        'encryption',
        'decryption',
        'signing',
        'verification',
        'golang',
      ],
    },
    newXFSCRepo('crypto-provider-luna-cloud-hsm-plugin') {
      description: 'This plugin provides key usage by using the luna hsm.',
      topics: [
        'jwt',
        'pem',
        'random',
        'ec-dsa',
        'rsa',
        'encryption',
        'decryption',
        'signing',
        'verification',
        'golang',
        'hsm',
        'luna',
        'x509',
        'pcks11',
      ],
    },
    newXFSCRepo('crypto-provider-service') {
      description: 'Crypto Provider service provides REST APIs for creating Verifiable Credentials (VC) and Verifiable Presentations (VP) in the W3C credential format. It also provides more generic endpoints for signing arbitrary data, for adding cryptographic proofs to existing VC/VP and for fetching public keys necessary for signature verification.',
      topics: [
        'jwt',
        'pem',
        'random',
        'ec-dsa',
        'rsa',
        'encryption',
        'decryption',
        'signing',
        'verification',
        'golang',
        'crypto',
        'vp',
        'vc',
        'did-document',
        'did',
        'jwks',
        'did-configuration',
        'x509',
        'tsa',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('custom-policy-agent') {
      description: 'The policy service provides REST API to evaluate/execute OPA policies written in the Rego language.',
      topics: [
        'rego',
        'opa',
        'golang',
        'goa',
        'pdp',
        'tsa',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('data-contract-transaction') {
      description: 'Service for Data Contract Exchange',
      topics: [
        'data-contract',
        'exchange',
      ],
    },
    newXFSCRepo('data-exchange-logging') {
      description: 'The XFSC Service Data Exchange Logging Service (GX-DELS) provides evidence that data has been (a) submitted and (b) received and (c) rules and obligations (Data Usage Policies) were enforced or violated',
      topics: [
        'data-exchange',
        'nodejs',
        'policy',
      ],
    },
    newXFSCRepo('deployment') {
      description: 'This repo contains helm charts for deployment and integration',
      topics: [
        'kubernetes',
        'helm',
        'docker',
        'integration',
      ],
    },
    newXFSCRepo('dev-ops') {
      description: 'This repo contains scripts, helm charts, ci templates and docker files',
      topics: [
        'kubernetes',
        'helm',
        'docker',
        'dev-ops',
        'ci-cd',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('did-core') {
      description: "Implements the basics of did core specification e.g. did documents for very basic setup of verification methods and it's resolving.",
      topics: [
        'did',
        'w3c',
        'golang',
        'ssi',
      ],
    },
    newXFSCRepo('didcomm-v2-connector') {
      description: 'This repo contains a didcomm v2 mediator implementation for cloud events messaging.',
      topics: [
        'nats',
        'didcomm-v2',
        'golang',
        'ssi',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('docs') {
      description: 'XFSC Documentation',
      topics: [
        'architecture',
        'docs',
        'xfsc',
        'xfsc-spec',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('email-service') {
      description: 'This repo contains an simple email service which is integrated in nats',
      topics: [
        'nats',
        'email',
        'smtp',
        'golang',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('event-log-service') {
      description: 'This repo contains an nats event logger service.',
      topics: [
        'nats',
        'golang',
        'cloud-events',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('integration') {
      description: 'Integration Repo for more integrated use cases',
      topics: [
        'xfsc',
        'argocd',
        'helm',
      ],
    },
    newXFSCRepo('ipfs-document-manager') {
      description: 'A service which stores simple documents to IPFS nodes',
      topics: [
        'ifps',
        'golang',
        'vdr',
        'verifiable-data-registry',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('landingpage') {
      description: 'Repo for the XFSC Landingpage',
      gh_pages_source_path: '/',
      topics: [
        'landingpage',
        'xfsc',
        'xfsc-spec',
        'specification',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('microservice-core-go') {
      description: "The microservice core is a small library which contains helper functions and basic setups for golang microservices. It's just a minimum set for messaging, rest and some helpers, but not so mightful as Goa",
      topics: [
        'gin',
        'golang',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('nats-message-library') {
      description: 'This library contains default golang message structures and types which are used by the micro services as data contract for communication.',
      topics: [
        'golang',
        'nats',
        'messaging',
        'ocm-w-stack',
        'pcm-cloud',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('notarization-service') {
      description: 'The purpose of the Notarization API is to provide an authorization officer a software component to attest given master data and transform it to a digital verifiable credential representation.',
      topics: [
        'java',
        'quarkus',
        'rabbit-mq',
        'eidas',
        'notarization',
        'vc',
        'vp',
        'signing',
        'not',
      ],
    },
    newXFSCRepo('oid4-vci-authorization-bridge') {
      description: 'The pre authorization provides the new grant type for the OID4VCI flow to support issuing operations with the pre authorization flow. This bridge can be later configured in the open id configuration under the type urn:ietf:params:oauth:grant-type:pre-authorized_code which is defined in the OID4VCI Spec ',
      topics: [
        'golang',
        'vc',
        'vp',
        'oauth2',
        'oid4vci',
        'pre-authorized-code',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('oid4-vci-credential-retrieval-service') {
      description: 'The pre authorization provides the new grant type for the OID4VCI flow to support issuing operations with the pre authorization flow. This bridge can be later configured in the open id configuration under the type urn:ietf:params:oauth:grant-type:pre-authorized_code which is defined in the OID4VCI Spec ',
      topics: [
        'golang',
        'vc',
        'vp',
        'oauth2',
        'oid4vci',
        'oidc',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('oid4-vci-credential-verification-service') {
      description: 'OID4VP service',
      topics: [
        'oid4vp',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('oid4-vci-issuer-dummycontentsigner') {
      description: 'OID4VC Issuer Service Frame dummy plugin (OCM W-Stack)',
      topics: [
        'oid4vci',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('oid4-vci-issuer-service') {
      description: 'OID4VC Issuer Service Frame (OCM W-Stack)',
      topics: [
        'oid4vci',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('oid4-vci-vp-integration-tests') {
      description: 'OCM W-Stack integration tests',
      topics: [
        'oid4vci',
        'behave',
        'python',
      ],
    },
    newXFSCRepo('oid4-vci-vp-library') {
      description: 'This library contains default golang message structures and types which are used by the micro services as data contract for communication. OCM W-Stack',
      topics: [
        'oid4vci',
        'oid4vp',
        'oidc',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('oid4-vci-vp-well-known-service') {
      description: 'The well known service implements the well known issuer metadata part of the OID4VCI protocol. OCM W-Stack',
      code_scanning_default_languages: ["actions"],
      topics: [
        'oid4vci',
        'oidc',
        'ocm-w-stack',
      ],
    },
    newXFSCRepo('orchestration-engine') {
      description: 'An improved Low-code Orchestration engine for event-driven applications with added enhancements and features optimized for XFSC Toolbox.',
      code_scanning_default_languages: ["javascript-typescript"],
      topics: [
        'node-red',
        'orchestration',
      ]
    },
    newXFSCRepo('orchestrators') {
      description: 'Meta-orchestrator, Terraform and TOSCA orchestrators, IaC templates storage and server, orchestrator IaC examples and documentation.',
      topics: [
        'terraform',
        'orchestration',
      ],
    },
    newXFSCRepo('org.eclipse.xfsc') {
      description: 'XFSC',
      code_scanning_default_languages: [
        'actions',
      ],
      gh_pages_source_branch: 'main',
      gh_pages_source_path: '/docs',
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            'None',
            'gh-pages',
            'main',
          ],
          deployment_branch_policy: 'selected',
        },
      ],
    },
    newXFSCRepo('redis-cache-service') {
      description: 'Cache service exposes HTTP interface for working with Redis (TSA)',
      topics: [
        'opa',
        'redis',
        'tsa',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('rego-policies') {
      description: 'Repo for basic rego policies',
      topics: [
        'rego',
        'policies',
        'tsa',
      ],
    },
    newXFSCRepo('sd-creation-wizard-api') {
      description: 'Backend service to convert an input shacl shape into JSON form for the frontend service.',
      topics: [
        'self-description',
        'catalogue',
      ],
    },
    newXFSCRepo('sd-creation-wizard-frontend') {
      description: 'The Gaia-X Framework provides specifications and Open Source Software addressing the key building blocks to create data and infrastructure ecosystems.',
      topics: [
        'self-description',
        'catalogue',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('sd-jwt-service') {
      description: 'This service just creates SD-JWT encodings with disclosures and verifies it. Keypair is just a dummy one for signature, dont use it as standard and resign the token always.',
      topics: [
        'sd-jwt',
        'open-wallet-foundation',
        'selective-disclosure',
        'ocm-w-stack',
        'tsa',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('sd-schemas') {
      description: 'This repository contains schema and documentation for developing compliant Gaia-X Credentials (formerly called Gaia-X Self-Descriptions / SDs).',
      topics: [
        'python',
        'self-description',
        'catalogue',
      ],
    },
    newXFSCRepo('sd-validation-api') {
      description: 'API for validating Self Descriptions',
      topics: [
        'java',
        'rest',
        'self-description',
        'catalogue',
      ],
    },
    newXFSCRepo('ssi-jwt') {
      description: 'This library contains common JWT extensions for usage in SSI context.',
      topics: [
        'ssi',
        'jwt',
        'golang',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('ssi-vdr-core') {
      description: 'Verifiable Data Registry provided an interface for storing Decentralised Identifiers (DID documents).The library uses plugin-based architecture, using it as a dependency requires additional steps.',
      topics: [
        'ifps',
        'vdr',
      ],
    },
    newXFSCRepo('ssi-vdr-ipfs') {
      description: 'A plugin implementation of VerifiableDataRegistry interface using Interplanetary Filesystem for storing files. Used by VDR',
      topics: [
        'ifps',
        'vdr',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('statuslist-service') {
      description: 'The status list service implements the basis for realizing the basic concept of a bit string  lists for OCM W-Stack.',
      topics: [
        'revocation',
        'open-wallet-foundation',
        'jwt-statuslist',
        'bitstring',
        'statuslist-2021',
        'golang',
        'ocm-w-stack',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('task-sheduler') {
      description: 'The task service provides an HTTP interface for executing asynchronous (HTTP) Tasks and Task lists.',
      topics: [
        'tsa',
        'opa',
      ],
    },
    newXFSCRepo('train-dns-trust-zone-manager') {
      description: 'The DNS Zone Management is the component responsible for managing the DNS zone file and used for anchoring the trust framework DID information into the zone file.',
      code_scanning_default_languages: ["actions"],
      topics: [
        'train',
        'essif',
        'dnssec',
        'dns',
      ],
    },
    newXFSCRepo('train-integration-tests') {
      description: 'This repo contains the TRAIN integration tests',
      topics: [
        'train',
        'essif',
        'dnssec',
        'dns',
        'behave',
        'python',
        'gherkin',
      ],
    },
    newXFSCRepo('train-shared') {
      description: 'This repository contains java code shared between several TRAIN projects and used as Git Submodules. ',
      topics: [
        'train',
        'essif',
        'dnssec',
        'dns',
      ],
    },
    newXFSCRepo('train-trust-framework-manager') {
      description: 'XFSC Train Trust Framework Manager allows Trust Framework and Trust List Provision. TFM is responsioble for configuring and managing trust frameworks with its corresponding trust lists.',
      topics: [
        'train',
        'essif',
        'dnssec',
        'dns',
      ],
    },
    newXFSCRepo('train-trusted-content-resolver') {
      aliases: ['train-trust-validator'],
      description: 'TRAIN provides a trust management infrastructure for XFSC. Trusted Content Resolver service allows Trusted Framework Pointers resolution and verification.',
      topics: [
        'train',
        'essif',
        'dnssec',
        'dns',
        'resolver'
      ],
    },
    newXFSCRepo('trusted-info-hub') {
      description: 'Information Hub service is responsible for exporting and importing policy data wrapped in Verifiable Credentials and Verifiable Presentations.',
      topics: [
        'goa',
        'golang',
        'w3c',
        'vp',
        'vc',
        'tsa',
      ],
    },
    newXFSCRepo('workshops') {
      topics: [
        'react',
        'oauth2',
        'nats',
        'ssi',
        'oidc',
        'nodered',
        'verifiable-credentials',
        'gaia-x',
        'clearing-house',
        'self-description',
        'oid4vci',
        'oid4vp',
        'gaia-x-credentials',
        'compliance-credential',
      ],
      description: 'This repository contains XFSC Workshop material and results',
      homepage: 'https://eclipse-xfsc.github.io/landingpage/',
    },
    newXFSCRepo('bdd-executor') {
      description: 'The BDD executor is an behave execution for Gherkin tests',
      topics: [
        'bdd',
        'gherkin',
        'integration-testing',
        'test',
        'python',
        'behave',
      ],
      dependabot_alerts_enabled: false,
    },
    newXFSCRepo('mobile-wallet') {
      description: 'Personal Credential Manager Mobile app',
      topics: [
        'pcm-mobile',
        'android',
        'swift',
        'kotlin',
      ],
    },
    newXFSCRepo('mobile-wallet-integration-tests') {
      description: 'Personal Credential Manager Mobile Integration Tests',
      topics: [
        'pcm-mobile',
        'bdd',
      ],
    },
    newXFSCRepo('cloud-wallet-integration-tests') {
      description: 'Personal Credential Manager Cloud Integration Tests',
      topics: [
        'pcm-cloud',
        'bdd',
        'gherkin',
        'behave',
        'python',
      ],
    },
    newXFSCRepo('cloud-wallet-plugin-backend-template') {
      description: 'Personal Credential Manager Cloud Plugin backend template',
      topics: [
        'pcm-cloud',
        'plugin',
        'golang',
      ],
    },
    newXFSCRepo('cloud-wallet-plugin-core') {
      description: 'Personal Credential Manager Cloud Frontend Plugin core',
      topics: [
        'pcm-cloud',
        'plugin',
        'golang',
      ],
    },
    newXFSCRepo('cloud-wallet-plugin-frontend-template') {
      description: 'Personal Credential Manager Cloud Frontend Plugin template',
      topics: [
        'pcm-cloud',
        'plugin',
        'react',
      ],
    },
    newXFSCRepo('cloud-wallet-account-service') {
      description: 'Personal Credential Manager Cloud Account Service which manages the accounts for users.',
      topics: [
        'pcm-cloud',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('cloud-wallet-integration-tests') {
      description: 'Personal Credential Manager Cloud Integration Tests',
      topics: [
        'pcm-cloud',
        'behave',
        'bdd',
        'gherkin',
        'selenium',
      ],
    },
    newXFSCRepo('cloud-wallet-plugin-discovery') {
      description: 'Personal Credential Manager Cloud Wallet Plugin Discovery.',
      topics: [
        'pcm-cloud',
        'kubernetes',
        'k8s',
        'discovery',
        'kong',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
     newXFSCRepo('cloud-wallet-plugin-kubernetes-operator') {
      description: 'Personal Credential Manager Cloud Wallet Plugin Kubernetes Operator which observes namespaces for new deployments of plugins.',
      topics: [
        'pcm-cloud',
        'kubernetes',
        'k8s',
        'namespace',
        'operator',
        'golang',
      ],
    },
    newXFSCRepo('cloud-wallet-web-ui') {
      description: 'Personal Credential Manager Cloud UI which implements a demo of a OID4VCI/VP cloud wallet.',
      topics: [
        'pcm-cloud',
        'oid4vci',
        'vc',
        'vp',
        'oid4vp',
        'react',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-admin-service') {
      description: 'Administrative functions for the portal',
      topics: [
        'xfsc',
        'admin',
        'portal',
        'microservice',
        'typescript',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-article-service') {
      description: 'Article and content management',
      topics: [
        'xfsc',
        'content',
        'article',
        'portal',
        'service',
        'microservice',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-claim-mapping-library') {
      description: 'Library for the claims management service',
      topics: [
        'xfsc',
        'claims',
        'mapping',
        'library',
        'microservice',
        'portal',
      ],
    },
    newXFSCRepo('portal-claim-mapping-service') {
      description: 'Claims management service for portal protection',
      topics: [
        'xfsc',
        'claims',
        'mapping',
        'microservice',
        'identity',
        'portal',
      ],
    },
    newXFSCRepo('portal-dashboard-service') {
      description: 'Provides a dashboard for the portal',
      topics: [
        'xfsc',
        'dashboard',
        'portal',
        'analytics',
        'microservice',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-demo') {
      description: 'Demo application for external systems.',
      topics: [
        'xfsc',
        'demo',
        'test',
        'mock',
        'integration',
        'portal',
      ],
    },
    newXFSCRepo('portal-did-management-service') {
      description: 'Provides a management of DIDs',
      topics: [
        'xfsc',
        'did',
        'identity',
        'ssi',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-discovery-service') {
      description: 'Provides a portal discovery service',
      topics: [
        'xfsc',
        'discovery',
        'search',
        'federation',
        'microservice',
        'portal',
      ],
    },
    newXFSCRepo('portal-federated-catalogue-management') {
      description: 'Manages the federated catalogue',
      topics: [
        'xfsc',
        'catalogue',
        'federation',
        'services',
        'management',
        'portal',
      ],
    },
    newXFSCRepo('portal-infra-mesh') {
      description: 'Provides service mesh capabilities.',
      topics: [
        'xfsc',
        'infrastructure',
        'mesh',
        'network',
        'microservice',
        'portal',
      ],
    },
    newXFSCRepo('portal-lcm-service') {
      description: 'Manages lifecyles of federation services.',
      topics: [
        'xfsc',
        'lifecycle',
        'management',
        'federation',
        'service',
        'microservice',
        'portal',
      ],
    },
    newXFSCRepo('portal-onboarding-service') {
      description: 'Supports organisations for portal onboarding',
      topics: [
        'xfsc',
        'onboarding',
        'organization',
        'identity',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-policy-management-service') {
      description: 'Manages Access Policies for the portal',
      topics: [
        'xfsc',
        'policy',
        'access-control',
        'data-sharing',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-e2e-test-automation') {
      description: 'End-to-End Test Automation for the XFSC-Portal.',
      topics: [
        'xfsc',
        'testing',
        'automation',
        'e2e',
        'quality-assurance',
        'portal',
      ],
    },
    newXFSCRepo('portal-frontend') {
      description: 'A frontend for the xfsc portal',
      topics: [
        'xfsc',
        'frontend',
        'react',
        'typescript',
        'ui',
        'portal',
      ],
    },
    newXFSCRepo('portal-integration') {
      description: 'Service for the integration of xsfc portal',
      topics: [
        'xfsc',
        'integration',
        'orchestration',
        'portal',
        'testing',
      ],
    },
    newXFSCRepo('portal-pre-acceptance-testing') {
      description: 'demo environment for xfsc portal',
      topics: [
        'xfsc',
        'testing',
        'pre-acceptance',
        'qa',
        'automation',
        'portal',
      ],
    },
    newXFSCRepo('portal-principal-credential-creation-service') {
      description: 'Creates digital proofs for the portal',
      topics: [
        'xfsc',
        'credentials',
        'ssi',
        'principal',
        'identity',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-proof-management-service') {
      description: 'Manages proofs and proof handlings',
      topics: [
        'xfsc',
        'ssi',
        'proofs',
        'identity',
        'verification',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-resource-provision-demo') {
      description: 'Demonstrates a resource provision',
      topics: [
        'xfsc',
        'resource-provisioning',
        'demo',
        'kubernetes',
        'infrastructure',
        'portal',
      ],
    },
    newXFSCRepo('portal-self-description-management') {
      description: 'Manages the creation, validation and provision of self descriptions',
      topics: [
        'xfsc',
        'self-description',
        'compliance',
        'validation',
        'management',
        'portal',
      ],
    },
    newXFSCRepo('portal-self-description-service') {
      description: 'Provides Portal capabilities for self descriptions',
      topics: [
        'xfsc',
        'self-description',
        'api',
        'ssi',
        'compliance',
        'microservice',
        'portal',
      ],
    },
    newXFSCRepo('portal-sp-service') {
      description: 'Provides SP Functionality for XFSC Portal.',
      topics: [
        'xfsc',
        'service-provider',
        'sp',
        'federation',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('portal-user-account-service') {
      description: 'Manages user accounts in thr XFSC Portal',
      topics: [
        'xfsc',
        'user',
        'account',
        'identity',
        'keycloak',
        'microservice',
        'portal',
      ],
      code_scanning_default_languages: [
        'actions',
      ],
    },
    newXFSCRepo('aas') {
      description: 'Implements OAuth2 for SSI',
      topics: [
        'xfsc',
        'authentication',
        'authorization',
        'iam',
        'keycloak',
        'security',
        'microservice',
        'aas',
      ],
    },
    newXFSCRepo('gx-vc-verifier-npm') {
      description: 'Nestjs Module for validating GX VCs',
      topics: [
        'gaia-x',
        'vc',
        'nestjs',
        'ed25519',
      ],
    },
    newXFSCRepo('crypto-provider-service-java') {
      description: 'An java implementation of the crypto provider interface.',
      topics: [
        'gaia-x',
        'vc',
        'java',
        'ed25519',
        'maven',
        'crypto'
      ],
    },
    newXFSCRepo('tsa-integration-tests') {
      description: 'BDD Driven Tests for tsa',
      topics: [
        'bdd',
        'vc',
        'python',
        'ed25519',
        'tsa'
      ],
    },
    newXFSCRepo('federated-catalogue') {
      description: 'Catalogue for self descriptions and service offerings.',
      code_scanning_default_languages: ["actions"],
      topics: [
        'catalogue',
        'gaia-x',
        'self-description',
        'service-offering'
      ],
    },

    newXFSCRepo('smartdeployment') {},
    newXFSCRepo('facis-fap') {},
    newXFSCRepo('facis-poc') {},

    newXFSCRepo('facis') {},
    newXFSCRepo('facis-fap1-implementation') {
      code_scanning_default_languages: ["actions"],
    },
    newXFSCRepo('facis-fap2-implementation') {},
    newXFSCRepo('facis-aviation-poc') {},
    newXFSCRepo('trusted-cloud') {},
    newXFSCRepo('easy-stack-builder') {},
    newXFSCRepo('easy-stack-builder-catalogue') {},
    newXFSCRepo('easy-stack-builder-orce') {},
    newXFSCRepo('aw40-demonstrator') {},
    orgs.newRepo('.github') {},
    newXFSCRepo('did') {
      forked_repository: 'w3c/did'
    },
    newXFSCRepo('didcomm-mediator-service') {
      forked_repository: 'openwallet-foundation/didcomm-mediator-service'
    },
    newXFSCRepo('transmute-universal-resolver-driver') {
      forked_repository: 'transmute-industries/restricted-resolver',
      code_scanning_default_languages: [
        'actions',
      ],
    }
  ],
}
