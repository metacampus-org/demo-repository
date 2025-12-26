**Demo Repository**

**Purpose**
This is a private repository created to faciliate internal development work related with going-to-market with the metaCAMPUS MOOA platfrom as determined by the metaCAMPUS DAO. We have a lot of work to do. Generally speaking, for demonstration and development purposes we have simulated a multi-tenant architecture that will use the same development pipeline via a single host (AWS) that can be rapidly repurposed and redeployed within dedicated VPC environments depending on client-specific needs.

We will be using a ringed deployment **(eat your own dog food)** model for future releases as the project gains traction and new clients and releases are added.

**System Architecture** **(for details: contact Alfred Armendariz, metaCAMPUS SVP alfred@metacampus.org)**

The solution architecture will be made up of multiple microservice containers communicating via REST within a single EKS/ECS to include:

1. metaCAMPUS EQ2 Smart Contract Application
2. metaCAMPUS EQ2 Derivative Tokenomics Application
3. Key Management System (Intermezzo)
4. Pawn Server - Algorand API (Intermezzo)
5. Authentication Service

## **For institutional clients intending to participate in EQ2 DAO Governance** an Alogrand Virtual Machine (AVM) Algod Node 4.3.0 or latest running in-spec Algod Node will be required (this is not a microservice).

## **Open Source Intent**
metaCAMPUS intends to open source an alpha release of the components above with an MIT attribution license for Algorand Testnet Pilot Customers for a period of no longer than three months before releasing the ability to go-live on Algorand main-net.

## **Developer Wiki**
| Developer   |  Username    |
| ----------- | ------------ |
|Charles      | charles      |
|Rohan        | rohans       |
|Tyler        | tyler.rosa   |
|George       | george       |

## Checking out Git Branches
Proper check-out of a dev branch means that the developer will label it with their username so that the leadership team can track the work being done and we don't get lost context switching between branches - the team needs to be on the same page internally.

**For example: if George checks out a branch it is his branch to work on for the duration of this project and it should be named metacampus-george**
George should not be making additional branches named after whatever comes to his mind in the middle of the night after drinking too much coffee. Nobody from the leadership team is going to go branch by branch to identify what George is working on and why George is not where the tip of a branch is etc. This is exhausting!

Each time the team meets we are going to be speaking to the granularity of each commit and individual contribution in a SCRUM model before anything gets merged into the master branch and there will be multiple checks and balances before your code ever makes it into the alpha release that will be made public. Charles "Chuck" will be your SCRUM lead after an initial trial period.

## Accessing the Environment
We have created a test environment for developers to build, test and learn on Dev-3 and Dev-4 before code is merged and pushed to production in the demo environment. Anything that is working for you locally needs to be merged with, tested and approved by the Product Manager(Charles) and at least one member of the leadership team(SVP, Managing Partner or Governor) before anything is deployed to either of the development environments.

You can use PuTTY or OpenSSH as appropriate and use the keys provided to gain access to each of these servers. Please reach out to info@metacampus.org if you do not have and require a key or experience any issues. Please do not share these keys with anyone and please store them in a "cold" environment that is not easily accessible by the internet like an external drive.

We are creating a collaborative environment for developers to build, test and learn on Dev-3 and Dev-4 before code is pushed to production in the demo environment. These are EC2 machines where docker containers can be deployed, but eventually we will migrate to an EKS/ECS CI/CD pipeline environment per the solution architecture diagram and DevOps Pipeline Workflow.
