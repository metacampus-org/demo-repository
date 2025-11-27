**Demo Repository**

**Purpose**
This is a private repository created to faciliate internal development work related with going-to-market with the metaCAMPUS MOOA platfrom as described in the metaCAMPUS DAO. We have a lot of work to do.

Generally speaking, for demonstration and development purposes we have simulated a multi-tenant architecture that will use the same development pipeline via a single host (AWS) that can be rapidly repurposed and redeployed within a dedicated VPC dependant on client-specific needs.

We will be using a ringed deployment(eat your own dog food) model for future releases as the project gains traction and new releases are added.

**System Architecture**
We are working toward a solution architecture that will be made up of multiple microservice containers communicating via REST within a single EKS to include:

1. metaCAMPUS EQ2 Smart Contract Application
2. metaCAMPUS EQ2 Derivative Tokenomics Application*
3. Key Management System (Intermezzo)
4. Pawn Server - Algorand API (Intermezzo)
5. Authentication Service

**For clients who intend to participate in EQ2 DAO** an Alogrand Virtual Machine (AVM) Algod Node 4.3.0 or latest running in spec on an EC2 machine (this is not a microservice).

**Open Source Intent**
At this point in time, metaCAMPUS intends to open source an alpha release of the components above with an MIT attribution license for the Algorand Testnet.


## **Developer Wiki**
| Developer   |  Username    |
| ----------- | ------------ |
|Ehu          | ehus         |
|Rohan        | rohans       |
|Tyler        | tyler.rosa   |
|Neil         | nielf        |
|Argenis      | argenis      |
|George       | george       |

Apologies for the misspelling😅

## Checking out Git Branches
Going forward to check out a branch you will label it with your username so that the leadership team can track the work being done and you don't get lost context switching - we should be on the same page. For example: if Ehu checks out a branch it is his branch to work on for the duration of this project and it should be named metacampus-ehu

Ehu should not be making additional branches named after whatever comes to his mind in the middle of the night after drinking too much coffee. Nobody from the leadership team is going to go branch by branch to identify what is working and what is not or where the tip of a branch is etc. this is exhausting!

Each time the team meets we are going to be speaking to the granularity of each commit and individual contribution in a SCRUM model before anything gets merged into the master branch and there will be multiple checks and balances before your code ever makes it into the alpha release for the demonstration site.

## Accessing the Environment
We have created a test environment for developers to build, test and learn on Dev-3 and Dev-4 before code is merged and pushed to production in the demo environment. Anything that is working for you locally needs to be merged with and tested by at least two metaCAMPUS developers before anything is deployed to either of the development environments (for now).

You can use PuTTY or OpenSSH as appropriate and use the keys provided to gain access to each of these servers. 

Please reach out to info@metacampus.org if you do not have and require a key or experience any issues.

These are EC2 machines where docker containers can be deployed - eventually we will migrate to an EKS environment to host as much as possible - but we need to be certain this is within our skill set and I am not certain of that at this point in time.

The development environment is presently hosted on AWS and can be accessed using the provided credentials by logging in with your username here: <https://d-906629a92a.awsapps.com/start> you will also need to enter the following AWS Account ID: 438499431238

These are the Dev Servers:

Dev-4 18.119.1.196

Dev-3-Rebuild 18.116.66.252 <https://dev1.metacampus.org> 

Demo server 3.149.193.236 <https://demo.metacampus.org>

