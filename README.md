**DRAFT Demo Repository DRAFT**

**Purpose**

This is a private repository created to faciliate the work related to the addition of features outlined in the metaCAMPUS road map as determined during the easy-a-hackathon and to create an alpha release and pilot program.

An outline for the project plan can be found by visiting <https://github.com/orgs/metacampus-org/projects/1> please do not hesitate to add to this as you see fit.

Generally speaking, for demonstration and development purposes we would like to create two independent environments that can use the same development pipeline within a single host that can be rapidly repurposed and redeployed within a client dedicated VPC.

We can use a ringed deployment model for future releases as the project gains traction and new releases are added.

**Proposed System Architecture**

Eventually, we will work toward a solution architecture that will be made up of multiple microservice containers communicating via REST within a single EKS to include:

1. metaCAMPUS Smart Contract Application
2. Key Management System (Intermezzo)
3. Pawn Server - Algorand API (Intermezzo)
4. Authentication Service

**optional for purposes of EQ2 DAO participation** an Alogrand Virtual Machine (AVM) Algod Node 4.3.0 or latest running in spec on an EC2 machine (this is not a microservice).

**Open Source Intent**

At this time, the intent is to open source an alpha release with an MIT attribution license as long as the security concerns expressed with relation to credential and node spoofing can be adequately addressed.

**Developer Wiki**

The development environment is presently hosted on AWS and can be accessed using the provided credentials by logging in with your username here:
<https://d-906629a92a.awsapps.com/start>
you will also need to enter the following AWS Account ID: 438499431238

There you will find three EC2 machines...

dev servers

Dev-4 18.119.1.196

Dev-3-Rebuild 18.116.66.252

<https://dev1.metacampus.org> 

demo server

<https://demo.metacampus.org>

3.149.193.236

| Developer   |  Username    |
| ----------- | ------------ |
|Ehu          | ehus         |
|Rohan        | rohans       |
|Tyler        | tyler.rosa   |
|Neil         | nielf        |
|Argenis      | argenis      |
|George       | george       |

Apologies for the misspelling😅

You can use PuTTY or OpenSSH as appropriate and use the keys provided to gain access to each of these servers. Please reach out to info@metacampus.org if you do not have and require a key or experience any issues.

The idea here is to create an environment for developers to build, test and learn on Dev-3 and Dev-4 before code is pushed to production in the demo environment. These are EC2 machines where docker containers can be deployed - eventually we will migrate to an EKS environment to host as much as possible - but we need to be certain this is within our skill set and I am not certain of that at this point in time.

Currently another development server <https://dev.metacampus.org> is being hosted separately by Argenis at 

31ed52451b83d15a.vercel-dns-016.com

You will need to speak with him about gaining access to this.

