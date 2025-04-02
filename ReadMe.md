﻿# Microsoft 365 Automation using Microsoft365Dsc and Azure DevOps

This repository is used in combination with the CICD Framework, which you can find [here](https://github.com/ykuijs/M365DSC_CICD).

Together they make up the solution with which you are able to implement automated management of Microsoft 365 using [Microsoft365Dsc](https://microsoft365.com) and [Azure DevOps](https://dev.azure.com). The required steps, prerequisites and all needed information can be found in [this whitepaper](https://aka.ms/m365dscwhitepaper).

This is [the repository](https://github.com/ykuijs/M365DSC_Data) for the Configuration Data Files. During a deployment, it is cloning the CICD Framework repository to retrieve the framework logic. The repository for the CICD Framework can be found [here](https://github.com/ykuijs/M365DSC_CICD).

> [!NOTE]
> To track issues in one place, please add any issues you find for this repo to the issue list in the [CICD Framework issue list]](https://github.com/ykuijs/M365DSC_CICD/issues).

# Changelog

- v3.1 (2025-04-01) - Added various improvements to framework
  - Improved troubleshooting information collection
    - Configured the PR Validation pipeline to also upload the merged data files to the pipeline, so it can be used for troubleshooting.
    - Configured the Deployment pipeline to save the "M365DSC", "Microsoft-Windows-DSC/Operational" and "MSCloudLoginAssistant" event logs and upload that to the pipeline, so it can be used for troubleshooting.
  - Changed prerequisite modules pre-staging to an Azure Blob Storage to using the ModuleFast module.
    - This removes the requirement for an Azure Blob Storage and improves the performance even more.
  - Optimized the CIM memory configuration
    - Some deployments ran into memory issues. These optimizations reduces the chance of experiencing these issues.
  - Added troubleshooting information to chapter 6 of the whitepaper.
    - Document some steps that can be used to troubleshoot the solution.
  - Implemented the default code page configuration to UTF8
    - In some cases data files contain Unicode characters, which result in issues during compliancy testing or deployment of configurations. This is resolved when the default code page in Windows is set to UTF8. The script now automatically changes this with each run.
  - **[BREAKING CHANGE]** Reverted resource naming in the Composite Resource Generator (CRG) from plural to singular.
    - To improve readability, the CRG converted the names of the Microsoft365DSC resources into plural variants if they allowed multiple objects to be inserted. For example: "ConditionalAccessPolicy" would become "ConditionalAccessPolicies" because you can configure multiple policies. As a result, the code in other places became much more complex, since the resource naming was not predictable and consistent. For example: In "IntunePolicySets" the word "Policy" should not be converted because "Sets" is the plural word here. That meant we had to implement exception on exception, etc.
    - So we decided to revert back to the original Microsoft365DSC resource naming in whatever form they are created. **Important:** This means you have to change the resource names in the data file structure as well, changing the resource names to their original form. This change goes into effect with the release of Microsoft365DSC v1.25.402.1 (the Breaking Change release of April 2025)!
  - Fixed issues in the whitepaper
    - Corrected hardcoded password into the required variable in the script mentioned in paragraph 4.1.3.
    - Updated steps in paragraph 4.7.4.1 to clarify that the creation of data files (paragraph 5.1.3 is required).
- v3.0 (2024-10-24) - Implemented a new framework
  - Separate Data and Scripts Azure DevOps projects
    - The solution is split into two different projects: Scripts and Data files.
    - This means that you can grant Microsoft 365 administrators access to the Data project, making sure they cannot change any of the scripts to deploy the changes.
  - Multiple levels of data files: Basic (Generic) and Tenant specific
    - In the current version of the whitepaper, each tenant has its own data files. So, if you have multiple tenants and want to update a setting on each tenant, you have to update all data files.
    - With this change, we have one Basic layer in which all the settings for all tenants live. Each tenant then has its own tenant specific data file. Both files are merged into the actual config that is being deployed to the tenant.
  - Mandatory settings check
    - There can be settings that should not be overridden. The basic layer defines these settings and the tenant layer should not override these settings.
    - The new solution will make sure these Mandatory settings are configured and not changed.
  - Split data files into workloads
    - To make the data files better readable, we have split the data files into a data file per workload.
    - This is implemented for all layers, Basic, Mandatory and Tenant specific.
  - Quality Assurance tests
    - Since we are all human and can make simple mistakes that can cause issues, we have added Quality Assurance tests to test the data for accuracy. If issues are found, the configuration won't be deployed.
  - Microsoft Hosted Agent support
    - The current solution used Self Hosted Agents for various reasons. We received feedback if it would be possible to use Microsoft Hosted Agents.
    - We implemented solutions to mitigate the reasons why we earlier chose for Self Hosted Agents. You can now use Microsoft Hosted Agents.
  - Tokenizing
    - If you are using group and/or policy names that include tenant specific text, you cannot add these to the basic settings since these aren't generic. That means these specific items have to be added to the tenant specific data file. This can be avoided when you can somehow use a naming standard and tokenize these names.
    - This update includes the possibility to use generic tokens, which then are replaced by tenant specific values. That way you can add the token to the Basic file and by replacing the token during the Build process to make it tenant specific.
  - Replacing Credentials with Certificate Thumbprint
    - When the previous whitepaper was released, Teams and Security and Compliance only supported Credential authentication. Since then, these two workloads got support for service principal authentication using certificate thumbprints.
    - The solution now only support service principals so MFA requirements won't be an issue anymore.
  - Generated Composite Resources module that support all workloads
    - The previous version of the whitepaper contained a template of a Composite Resources module that you had to extend and maintain yourself.
    - Right now, we have created a Composite Resource module generator that generates and published a new version to the PowerShell Gallery for each version of Microsoft365DSC. This generator also implements support for splatting, which is not possible out-of-the-box ​with PowerShell DSC. This ensures you can omit parameter when you are not using them, without the code throwing errors.
  - Generic functions are implemented via a public module called M365DSCTools, which is available in the PowerShell Gallery
    - Improvements to that module are now automatically available to everyone
    - You can add new features and fix bug by submitting a pull requests
  - Improved troubleshooting information
    - We have updated our logging function, which outputs better information.
    - We have added as much troubleshooting information in the scripts to make troubleshooting issues easier.
    - Since we are merging data files, we are also including a copy of the merged data in the pipeline artifacts. Both a tokenized and non-tokenized version.
- v2.0 (2022-11-08) - Major overhaul of the scripts
  - Splitting Microsoft 365 workload configurations into different composite resources
  - More robust deployment scripts
  - A DSC Compliancy script
- v1.0 (2020-11-01) - Scripts that belong to the first version of the whitepaper

# Links

- M365DSCTools: Generic tools/functions that are used by the solution.
  - [GitHub](https://github.com/ykuijs/M365DSCTools)
  - [PowerShell Gallery](https://www.powershellgallery.com/packages/M365DSCTools)
- M365DSC.CRG: Code that is used by the M365DSC.CompositeResources module to generate the the Composite Resources module based on Microsoft365DSC.
  - [GitHub](https://github.com/ykuijs/M365DSC.CRG)
  - [PowerShell Gallery](https://www.powershellgallery.com/packages/M365DSC.CRG)
- M365DSC.CompositeResources: Project that is generating new versions of the M365DSC.CompositeResources module and publishing it to the PowerShell Gallery.
  - [GitHub](https://github.com/ykuijs/M365DSC.CompositeResources)
  - [PowerShell Gallery](https://www.powershellgallery.com/packages/M365DSC.CompositeResources)
