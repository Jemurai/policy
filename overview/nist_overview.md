# NIST Overview

{{company_name}}'s security program and policies are built around NIST 800-53 and the NIST CSF
(Cybersecurity framework).  This overview provides background on those NIST standards and how they are incorporated
to make our security program robust.

## NIST

[NIST](https://www.nist.gov/) is the National Institute for Standards and Technology.  It is a part of the US
Department of Commerce and publishes standards related to all sorts of domains, including Communications, Chemistry,
Electronics and Cybersecurity.  

The NIST standards in the area of Cybersecurity are widely used as references by government and private organizations.
They have the benefit of being freely published and broadly adopted.  They are similar and overlapping with SOC, SIG,
ISO and other standards but represent a well established set of standards that are widely applied in the .gov
domain to secure organizational data.  NIST has established standards for cryptography, including the Advanced
Encryption Standard (AES) which is widely used as the industry standard for symmetric encryption.

NIST maintains a [Computer Security Resource Center - CSRC](https://csrc.nist.gov/) that links to all of the
security related publications.  NIST also maintains a [list of 170](https://csrc.nist.gov/publications/sp800)
"Special Publication (SP) 800" standards covering everything from Mobile Device Security to Email to TLS
implementations.  These are good places to start if you are looking to leverage NIST resources.

{{company_name}}'s program leverages two of the most widely used NIST standards and we provide some background on each
so that you can understand our program better:

* [NIST 800-53](https://nvd.nist.gov/800-53) — (Revision 4) Recommended Security Controls for Federal Information
  Systems and Organizations
* [NIST CSF](https://www.nist.gov/cyberframework) — The NIST Cybersecurity Framework

## NIST 800-53

[NIST 800-53](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf) is a broad standard that
captures programmatic activities required to maintain security and privacy at technically focused organizations.
It consists of 205 specific controls across the following 18 control "Families":

1. Access Control
1. Awareness and Training
1. Audit and Accountability
1. Security Assessment and Authorization
1. Configuration Management
1. Contingency Planning
1. Identification and Authentication
1. Incident Response
1. Maintenance
1. Media Protection
1. Physical and Environmental Protection
1. Planning
1. Program Management
1. Personnel Security
1. Risk Assessment
1. System and Services Acquisition
1. System and Communications Protection
1. System and Information Integrity

An example of a specific control (AC-1) from the Access Control family would be:

|   Field     | Value | Comments |
|-------------|-------|----------|
| Number      | AC-1  | Each item has a code.  These are referenced in policies. |
| Title       | Access Control Policy and Procedures | |
| Impact      | LOW_MODERATE_HIGH | This means the items applies at LOW / MODERATE and HIGH levels. See the section on NIST Levels. |
| Priority    |P1 | |
| Description | The organization develops, disseminates, and reviews/updates [  Assignment: organization-defined frequency ]: A formal, documented access control policy that addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and Formal, documented procedures to facilitate the implementation of the access control policy and associated access controls. | Based on the description, we build appropriate policy and activities to ensure that we are handling it.|

In this specific case, this item is covered in our IAM Policy.

{{company_name}} is using Version 4 of the NIST 800-53 Standard.  There is also a _draft_ of
[Version 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/draft) of the Standard which is planned to be
published in the Summer of 2019.  Since that is still a moving target, we are aligned to the stable published
official version.

Our security program takes each of the 205 controls in the current version of the standard and based on expert
guidance, incorporates those into our policies and the activities we undertake to meet our policies.

The core objective for using the NIST 800-53 standard is to ensure that our program is broad and aligned to what are
widely believe to be best practices.

## NIST CSF

The NIST Cybersecurity Framework is a different standard from NIST 800-53 and is used in a different way. The NIST
CSF is a framework for incorporating _risk_ into a security program. We use it as another dimension to ensure that
we have properly accounted for the risk related to different items in our program.

The NIST CSF has 5 top level Functions:

1. Identify
1. Protect
1. Detect
1. Response
1. Recover

Within each _Function_ there are variable numbers of Categories and Subcategories.  The NIST CSF model is intended
to be extensible.  We are using it based on the initial template and with explicit mapping to the NIST 800-53 Controls.

Two examples of items from NIST CSF are:

|Function | Category | Subcategory | Mapped 800-53 Controls |
|--------|----------|-------------|------------------------|
| Identify | Risk Management Strategy (ID.RM) | IR.RM-1: Risk management processes are established, managed and agreed to by organizational stakeholders. | PM-9 |
| Protect | Access Control (PR.AC) | PR.AC-1: Identities and credentials are managed for authorized devices and users. | AC-2, AC-7, AC-8, AC-9, IA-1, IA-2, IA-3, IA-4, IA-5, IA-6, IA-7, IA-8, IA-9, IA-10, IA-11, SC-17 |

The PM-9 control is one of the NIST 800-53 controls.  This CSF item (ID.RM-1) is covered in our Risk Management Policy.

The AC-2, AC-7 etc. controls are also from NIST 800-53.  This CSF item (PR.AC-1) is covered in our IAM Policy.

## NIST Impact Levels

The NIST 800-53 standard uses _IMPACT_ levels LOW, MODERATE and HIGH. These are referenced from
[FIPS 199](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.199.pdf) which defines the levels and how to assess
a system. The following table summarizes the detail from that document specifically:

| Level | How to assess | Comments |
|-------|---------------|----------|
| LOW   | The loss of confidentiality, integrity, or availability could be expected to have a limited adverse effect on organizational operations, organizational assets, or individuals. (Page 2) | Minor loss, Loss of privacy is considered LOW |
| MODERATE| The loss of confidentiality, integrity, or availability could be expected to have a serious adverse effect on organizational operations, organizational assets, or individuals.  (Page 2) | Significant financial loss or harm but not loss of life or life threatening injuries. |
| HIGH | The loss of confidentiality, integrity, or availability could be expected to have a severe or catastrophic adverse effect on organizational operations, organizational assets, or individuals. | Major damage, major financial loss, loss of life. |  

The intent of the levels is to help apply the controls appropriately for the level of data processed by the
organization or information system.

Systems with HIGH impact must do essentially everything in the list of controls because they have the most to protect.
Our standards include everything at a MODERATE level.

## Errata

Note that there are several controls that are not specifically not mapped into our policies. This is based on the
recommendation of security experts that advise us that certain controls are very difficult to implement or are not
widely used.  Our standards keep those enumerated explicitly in an Errata section to ensure that the intent is clear.

## Conclusion

By leveraging NIST 800-53 and NIST CSF, we are able to orient to policies and procedures that provide industry
standard security guidance.

With detailed requirements, we can assess our current maturity and build a program to improve our maturity in
specific areas based on organizational priorities.

We are confident that we are using NIST in the intended, industry standard, ways and welcome further questions to
our security team at security@{{company_domain}}.
