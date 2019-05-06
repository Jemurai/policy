# Data Classification Policy

This policy describes the different types of data that {{company_name}} handles and defines how it needs to be protected.

## Levels of Data Sensitivity

To keep our processes simple, we will define 4 broad tiers of data sensitivity.

| Tier | Description | Examples |
| -----|-------------|----------|
| 1 | Secret | Passwords, Account Numbers, PHI, PII, SSN.  |
| 2 | Internal | Internal processes and practices. |
| 3 | Public | Job descriptions. Anything posted on the web. |

### Specific Examples

1. {{company_name}} Leadership Structure - Tier 3 - Public
1. {{company_name}} Code Review Checklist - Tier 2 - Internal
1. {{company_name}} Employee Salary - Tier 1 - Secret
1. {{company_name}} Employee SSN - Tier 1 - Secret
1. Client Name - Tier 2 - Internal
1. Client Project - Tier 2 - Internal
1. Partner Name - Tier 2 - Internal
1. Partner Fees - Tier 2 - Internal
1. Any personal health information - Tier 1 - Secret
1. Any personally identifiable information - Tier 1 - Secret
1. Any financial account numbers - Tier 1 - Secret

## Encryption

### At Rest

We see three different types of encryption at rest:

1. Full disk encryption
1. Transparent database encryption (TDE) - database file encrypted
1. Column / Row based encryption

Full disk encryption is appropriate for Tier 2 and Tier 3 data.  Disk level encryption is required for all cloud storage.

TDE is mandatory on any system we build where the technology supports it.

Column and row based encryption is required for Tier 1 data.

### In Transit

All communications everywhere must be encrypted with TLS.

### Algorithms

* RSA with 2048 (or more) bit keys will be preferred.
* AES-256-GCM will be preferred for symmetric encryption.
* TLS 1.2 or above will be preferred.

Areas where this is not used for data in transit shall be tracked as risks per the Risk Policy.

### Key Management

In cases where we are handling private keys for certificates, they will be kept on the servers doing TLS as required.

In other cases, keys and secrets will be kept in a secure storage option (Eg. AWS KMS).

## Data Handling

It is expected that all Tier 1 and 2 data handled will be encrypted at rest using at least full disk encryption.  Further, it is expected that any Tier 1 data that is incorporated into a {{company_name}} application and stored in a database will be encrypted at rest using column and/or row based encryption.

It is expected that all Tier 1 and 2 data will be encrypted in transit.

All Tier 1 and 2 data shall have access controls in place to ensure that only intended consumers can access data.

## Labeling Ownership

Wherever possible, data stewardship shall be captured and self documented through file, folder, or other data item naming conventions.

## Destruction

In the event that a client requests data be destroyed, {{company_name}} will track that request in a ticketing system and follow a process to ensure that the data is fully purged from the {{company_name}} systems.

## Audience

All {{company_name}} employees need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Data Classification Policy |
| Policy Owner    | {{owner}}  |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Approvers       | {{approver}} |
| Applies To      | All of {{company_name}} |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |