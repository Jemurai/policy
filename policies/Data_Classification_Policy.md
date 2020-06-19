# Data Classification Policy

This policy describes the different types of data that {{company_name}} handles and defines how it needs to be protected.
[NIST800-53:RA-2](https://nvd.nist.gov/800-53/Rev4/control/RA-2)

## Levels of Data Sensitivity

To keep our processes simple, we will define 3 broad tiers of data sensitivity.

| Tier | Description | Examples |
| -----|-------------|----------|
| 1 | Restricted | Passwords, Account Numbers, PHI, PII, SSN.  |
| 2 | Internal | Internal processes and practices. |
| 3 | Public | Job descriptions. Anything posted on the web. |

### Data Classification Examples

Below are some specific examples of data grouped into their data classification
tier as required by this policy.

#### Tier 1 — Restricted

* {{company_name}} Employee Salary
* {{company_name}} Employee SSN
* Any personal health information
* Any personally identifiable information
* Any financial account numbers

#### Tier 2 — Internal

* {{company_name}} Code Review Checklist
* Client Name
* Client Project
* Partner Name
* Partner Fees

#### Tier 3 — Public

* {{company_name}} Leadership Structure

## Encryption

Encryption is an essential control for protecting data should it be exfiltrated.
The type and granularity of encryption required varies by tier.

### At Rest

There are three primary types of encryption at rest:

1. Full disk encryption (FDE)
1. Transparent data encryption (TDE) - often used by database engines. Encrypts
   the database files on disk and backups.
1. Database Column / Row based encryption

Full disk encryption is appropriate for Tier 2 and Tier 3 data.  Disk level
encryption is required for all cloud storage.

TDE is mandatory on any system built by {{company_name}} where the technology
supports it.

Column or row based encryption is required for Tier 1 data.
[NIST800-53:SC-28](https://nvd.nist.gov/800-53/Rev4/control/SC-28)

### In Transit

All communications everywhere must be encrypted with TLS. TLS 1.2 or above
is strongly preferred.

### Algorithms

* For asymmetric encryption RSA with 2048 (or more) bit keys is preferred.
* For symmetric encryption AES-256-GCM is preferred.

Areas where this is not used for data in transit shall be tracked as risks per the Risk Policy.
[NIST800-53:SC-12](https://nvd.nist.gov/800-53/Rev4/control/SC-12),[NIST800-53:SC-13](https://nvd.nist.gov/800-53/Rev4/control/SC-13)

### Key Management

In cases where private keys for certificates are handled, they will be kept on the servers doing TLS as required.

In other cases, keys and secrets will be kept in a secure storage option (e.g. AWS KMS).

## Data Handling

It is expected that all Tier 2 and 3 data handled be encrypted at rest
using at least full disk encryption. Further, it is expected that any Tier 2
data that is incorporated into a {{company_name}} application and stored in a
database be encrypted at rest using column and/or row based encryption.

It is expected that all Tier 1 and 2 data be encrypted in transit.

All Tier 1 and 2 data shall have access controls in place to ensure that only
intended consumers are permitted to access data.

The flows of Tier 1 and Tier 2 data shall be documented, with flows being
tracked and approved. [NIST800-53:AC-4](https://nvd.nist.gov/800-53/Rev4/control/AC-4)

Any sharing of data in Tier 1 or Tier 2 with third parties shall be tracked as
a specific risk and approved. [NIST800-53:CA-3](https://nvd.nist.gov/800-53/Rev4/control/CA-3)

## Labeling Ownership

Wherever possible, data stewardship shall be captured and self documented through file, folder, or other data
item naming conventions.

## Data Retention, Archival and Destruction

When it comes to data retention and destruction, there are competing priorities
from a privacy and security perspective.  Some regulations suggest that personal information
should only be stored for the shortest possible time that it is needed.  Others mandate that
data be retained to ensure proper investigations can be conducted.

{{company_name}} works to find an appropriate balance between these competing priorities.
Since we do not sell customer data, and are not collecting it for advertising purposes,
we tend to favor retention and security over aggressive removal and privacy.

Most customer and user information is retained until they request that it be deleted.  In
some cases, this data may be archived proactively after an extended period of inactivity;
but we do not have rules enforcing that at this time.  We do have explicit processes
outlined below to ensure that data deletion is complete and standards aligned.

In some cases, when individual data is deleted, we may retain pseudonmymous aggregate
data to preserve system operation for the organization or group they are part of.

Some information may be retained for a longer term for the following reasons:

* Security, fraud and abuse prevention
* Financial record-keeping
* Complying with legal or regulatory requirements
* Ensuring the continuity of services
* Direct communications with {{company_name}}

In the event that a client requests data be destroyed, {{company_name}} shall
track that request in a ticketing system and follow a process to ensure that
the data is fully purged from the {{company_name}} systems and the systems of
any third party with whom the data were shared.

In the event that {{company_name}} has scoped data on storage media, and the
owner of that laptop or other media leaves or the machine is to be returned,
the machine shall be wiped in accordance with [NIST 800-88](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-88r1.pdf). Specifically, data shall be Cleared before reusing with another company user
and data shall be Purged before being released to a new owner.

## Audience

All {{company_name}} employees need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Data Classification Policy |
| Policy Owner    | {{owner}} |
| Approvers       | {{approver}} |
| Approval Date   | {{approval_date}} |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Applies To      | All of {{company_name}} |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |
