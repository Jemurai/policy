# Risk Policy

This policy describes how {{company_name}} will handle risk and risk management.
[NIST800-53:PM-9](https://nvd.nist.gov/800-53/Rev4/control/PM-9)

## Risk Program

There shall be a formal program to identify, track and manage risk.  Each identified risk shall be tracked in a risk
register assigned to a specific management representative for handling and follow through.  Each risk identified shall
be explicitly accepted or addressed.  The risk register shall track progress on action plans to address risk to ensure
that identified risks get closed out.

## Active Risk Identification and Tracking

Risks may be identified by {{company_name}} employees or third parties.  Each risk will added to the a register so
that overall handling and outcome can be documented.

In addition to detailed tracking, summary metrics shall be produced to support high level risk decisions.

Part of the role of risk management will be to actively manage a risk management program and to identify critical
business processes. [NIST800-53:PM-10](https://nvd.nist.gov/800-53/Rev4/control/PM-10),
[NIST800-53:PM-11](https://nvd.nist.gov/800-53/Rev4/control/PM-11).

## Security Assessments and Audits

An element of managing risk is to conduct security assessments.  A security assessment is a process or project that
confirms that security program policies and practices are being adhered to.
[NIST800-53:CA-1](https://nvd.nist.gov/800-53/Rev4/control/CA-1),
[NIST800-53:CA-2](https://nvd.nist.gov/800-53/Rev4/control/CA-2),
[NIST800-53:RA-1](https://nvd.nist.gov/800-53/Rev4/control/RA-1),
[NIST800-53:RA-3](https://nvd.nist.gov/800-53/Rev4/control/RA-3),
[NIST800-53:AU-1](https://nvd.nist.gov/800-53/Rev4/control/AU-1).

### Audit Details

In order to ensure clear audit goals and parameters, {{company_name}} defines some parameters that represent the
minimum around what will be audited and how.

1. Auditable events include: [NIST800-53:AU-2](https://nvd.nist.gov/800-53/Rev4/control/AU-2)
      * Login / Logout
      * Provisioning / Deprovisioning
      * Privilege Grants

1. Audit events include: [NIST800-53:AU-3](https://nvd.nist.gov/800-53/Rev4/control/AU-3)
      * Timestamp [NIST800-53:AU-8](https://nvd.nist.gov/800-53/Rev4/control/AU-8)
      * Source IP (if applicable)
      * User (if applicable)
      * Session (if applicable)
      * Action
      * Outcome
      * Context (data around the event)
1. Where possible, systems shall be put in place to make it easy and automatic to generate the audit records
   outlined above. [NIST800-53:AU-12](https://nvd.nist.gov/800-53/Rev4/control/AU-12)
1. Audit storage shall be managed to store the necessary data (eg. allocated to store 3 months of data).
   [NIST800-53:AU-4](https://nvd.nist.gov/800-53/Rev4/control/AU-4)
1. Audit process failures shall generate high priority alerts that require resolution
   [NIST800-53:AU-5](https://nvd.nist.gov/800-53/Rev4/control/AU-5)
1. Audits shall be reviewed monthly for unusual activity.
   [NIST800-53:AU-6](https://nvd.nist.gov/800-53/Rev4/control/AU-6)
1. To make it easier to digest audit information, audit reduction tools / reporting tools may be used.
   [NIST800-53:AU-7](https://nvd.nist.gov/800-53/Rev4/control/AU-7) Original data shall be retained for raw review
   as needed per retention rules. [NIST800-53:AU-11](https://nvd.nist.gov/800-53/Rev4/control/AU-11)
1. Only authorized personnel shall have access to read audit information.
   [NIST800-53:AU-9](https://nvd.nist.gov/800-53/Rev4/control/AU-9)

## Threat Intelligence

{{company_name}} shall maintain a relationship with a security firm that will provide insight around current threats.

## Laws, Regulations and Compliance

{{company_name}} must proactively identify classes of data processed and maintain compliance with applicable laws,
standards, regulations and compliance regimes.

## Audience

{{company_name}} management must implement the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Risk Policy |
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
