# SOC Incident Report

## Incident Information

- Alert ID: SOC-2026-041
- Hostname: web-01
- Incident Type: Suspicious SSH Activity
- Severity: High (initial assessment)
- Status: Escalation Required

## Executive Summary

The investigation identified repeated failed SSH authentication
attempts followed by successful authentication for the deploy account.

After authentication, system reconnaissance commands were recorded.
A new account named svc-backup was created and added to the sudo group.

These events indicate possible unauthorized access and persistence.

## Indicators of Compromise

- Source IP: 203.0.113.88
- Target Host: web-01
- Account: deploy
- New Account: svc-backup

## Key Evidence

1. Three failed SSH login attempts.
2. Successful SSH authentication for deploy.
3. Commands used to inspect system information and processes.
4. Creation of svc-backup.
5. Addition of svc-backup to the sudo group.
6. Firewall ACCEPT event associated with the source IP.

## Timeline

08:41 - Failed SSH attempts.
08:42 - Successful SSH authentication.
08:43-08:46 - System reconnaissance commands.
08:50 - New account created.
08:51 - New account added to sudo group.
09:05 - SSH session closed.

## Potential Impact

- Unauthorized access to the Linux server.
- Potential privilege persistence through a new account.
- Possible access to sensitive system resources.

## Confidence Assessment

Medium.

Multiple related events support the suspicion of compromise.
However, the logs do not independently prove the identity of
the actor or the authorization status of the account changes.

## Recommended Actions

- Escalate to SOC Level 2.
- Preserve relevant logs and evidence.
- Verify whether the deploy login was authorized.
- Investigate the creation of svc-backup.
- Review sudo privileges and additional authentication records.
- Follow the organization's incident response procedures.

## Unknowns

- Was the deploy account compromised?
- Who created svc-backup?
- Was the new account used after creation?
- Was sensitive information accessed?
- Were other systems affected?

## Final Assessment

Possible Linux Server Compromise.
Further investigation is required.
