# Data Classification Policy

This policy describes the different types of data that Jemurai sees and how it needs to be handled.

## Levels of Data Sensitivity

To keep our processes simple, we will define 4 broad tiers of data sensitivity.

| Tier | Description | Examples |
| -----|-------------|----------|
| 1 | Secret | Client vulnerabilities. SSN.  |
| 2 | Sensitive | Client information. Internal salary.  |
| 3 | Internal | Internal processes and practices. |
| 4 | Public | Anything posted on the web. |

### Specific Examples

1. Jemurai Leadership Structure - Tier 4 - Public
1. Jemurai Code Review Checklist - Tier 3 - Internal
1. Jemurai Training Materials - Tier 3 - Internal
1. Jemurai Employee Salary - Tier 1 - Sensitive
1. Jemurai Employee SSN - Tier 1 - Secret
1. Client Name - Tier 3 - Internal
1. Client Project - Tier 3 - Internal
1. Client Vulnerabilities - Tier 1 - Secret
1. Partner Name - Tier 3 - Internal
1. Partner Fees - Tier 2 - Sensitive

## Encryption

### At Rest

We see three different types of encryption at rest:

1. Full disk encryption
1. Transparent database encryption (TDE) - database file encrypted
1. Column / Row based encryption

Full disk encryption is appropriate for Tier 2 and Tier 3 data.  Disk level encryption is required for all cloud storage.

TDE is mandatory on any system we build where the technology supports it.

Column and row based encryption is required for Tier 1 data handled by Jemurai built systems.

### In Transit

All communications everywhere must be encrypted with TLS.

### Algorithms

* RSA with 2048 bit keys will be preferred.
* AES-256-GCM will be preferred for symmetric encryption.
* TLS 1.2 or above will be preferred.

Areas where this is not used for data in transit shall be tracked as risks per the Risk Policy.

### Key Management

In cases where we are handling private keys for certificates, they will be kept on the servers doing TLS as required.

In other cases, keys and secrets will be kept in a secure storage option (Eg. AWS KMS).

## Data Handling

It is expected that all Tier 1, 2 and 3 data handled will be encrypted at rest using at least full disk encryption.  Further, it is expected that any Tier 1 data that is incorporated into a Jemurai application and stored in a database will be encrypted at rest using column and/or row based encryption.

It is expected that all Tier 1, 2 and 3 data will be encrypted in transit.

All Tier 1, 2 and 3 data shall have access controls in place to ensure that only intended consumers can access data.

## Labeling Ownership

Wherever possible, data stewardship shall be captured and self documented through file, folder, or other data item naming conventions.

## Destruction

In the event that a client requests data be destroyed, Jemurai will track that request in a ticketing system and follow a process to ensure that the data is fully purged from the Jemurai systems.

## Audience

All Jemurai employees need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Data Classification Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 12/31/2018 |
| Approvers       | Konda |
| Applies To      | All of Jemurai |
