# Master Security Policy

The master security policy outlines the main parts of how our security program works and draws from policy.  It describes who is responsible for policy, which policies are required, how and when they should be updated and what happens if they are not followed.

Anything that is common across all of our policies is captured in the master policy so that the top level rules are crystal clear and don't need to be repeated.

Details about specific areas that may have a more directed audience are captured in those specific policies.

## Company Introduction and The Spirit of Security

{{company_name}} takes security extremely seriously.  Our goal is to be explicit and clear about security whenever and wherever possible.

At the same time, we want to be agile and quick to adapt.  The policies herein are designed to allow us to find a balance between appropriate security measures for our employees, clients and partners - and a pragmatic solution that allows us to support our business interests.

## Policies and Procedures

Policies lay out the goals and principles of an organization.

Standards and procedures are documented steps to repeatedly achieve a particular goal.  For example, there might be a procedure to install an application - or to harden a server.  A policy would state that servers must be hardened and patched.

In some cases, our policies may specify some explicit requirements or steps.  This is to reduce fragmentation of information and keep as much close at hand as possible.

## Company Policies

The following are our policies.  We include their audience in the table so that we can help people find the policies that are most relevant to them.

| Policy | Audience | 
|--------|----------|
| [Privacy Policy](policies/Privacy_Policy.md) | Everyone |
| [Asset Management Policy](policies/Asset_Management_Policy.md) | IT |
| [Identity and Access Management Policy](policies/IAM_Policy.md) | IT |
| [Acceptable Use Policy](policies/Acceptable_Use_Policy.md) | Everyone |

## Responsiblity

{{company_name}} shall designate a clear responsiblity for security to an acting security officer.  The security officer shall ultimately be responsible for policy adoption and implementation, and other aspects of effective implementation of security measures at {{company_name}}.

## Approval Process

Each policy will have designated approvers representing the stakeholders for the area described by the policy.  Each change to policy shall be submitted in a github pull request and approvals tracked through pull request approval.

## Update Process

Each policy shall have a time to live, meaning that it will expire after a period of time and need to be renewed and/or updated.  The purpose is to make sure policy stays relevant and reflects alignment with the business needs.

As a default, each policy should be fully reviewed and approved annually.  Updates may be made periodically and may, with explict approval of the approvers for that policy, be extended for a year from a particular update date.

Part of the review process will be to evaluate who the appropriate approvers are.

## Audience

Each policy shall have a specific audience that indicates who needs to be aware of the policy.  It is expected that the audience for a given policy will be given training around the policy.

## Consequences for Policy Violation

Policy violation can result in employee termination.

The process for reviewing policy violation shall be:

1. The policy violation shall be documented in writing.
1. The security officer will review documentation.
1. If deemed a violation, it will be triaged to ascertain severity
1. If indicated, employee will be interviewed by security officer and information documented
1. Employee will be warned and advised to follow policy
1. If needed, the employee will be terminated

## Alignment to Standards

{{company_name}}'s policies and operating practices are designed to meet industry standard security practices including:

* Aligned to NIST 800-53
* Clear coverage of SIG Lite
* Coverage of NIST Cybersecurity Framework

To make it clear how we are interpreting and meeting the standards, policies shall be annotated with tags for:  NIST-CSF, NIST-800-53 and SIGLite controls.

## Tracking Data

Each policy shall have have tracking data at the end of the policy that captures critical information about the policy.  The tracking data shall include all of the fields included below in the Master Security Policy Tracking and the Version History that follows.

### Master Security Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Master Security Policy |
| Policy Owner    | {{owner}}  |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Approvers       | {{approver}} |
| Applies To      | All of {{company_name}} |

### Version History 

| Version | Date | Approvers | Changes | 
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |
