# Configuring your Continuous Delivery Platform
All the jobs linked to configuration are grouped in the "Configuration" tab:
![CDConfigTab](images/ConfigurationTab.png)
## Repository Credentials
This job allows you to configure your acess to Github but also the [BCD vault password](https://documentation.bonitasoft.com/bcd/3.2/how_to_use_bcd_with_data_encrypted).

1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "Configure my credentials" job.
2. Enter the GitHub user that will have access to your repositories
3. Enter the corresponding password for that account.
4. If you are planning to use hte BCD Vault then you can enter the vault password. This field can be left empty.
5. Click on the "Build" button to save the configuration
6. Make sure the job was successful:
![JobResult](images/CredentialsJobResult.png)
## Default Build configuration
This job allows you define the default build parameters i.e. the repository URL, the branch and environment to build in order to avoid having to re-enter the same parameters in the build job.
> Note: You can use the build job without configuring your default build configuration.
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "Configure my default build parameters - LivingApp" job.
2. Enter the URL to your Bonita living application repositiory (e.g. "https://github.com/acme/myGreatLivingApp.git").
3. Then enter the branch you will be building most of the time.
4. Finnaly input the environment (as defined in your project) you will be used when building.
Your job should look like this:
![BuildDefaultExample](images/BuildDefaultParameters.png)
5. Click on the "Build" button to save the configuration
6. Make sure the job was successful:
![JobResult](images/DefBuildJobResult.png)
## Default Deploy configuration
This job allows you define the default build parameters i.e. the BCD Configuration and the target runtime (production, preproduction or integration).
> Note: You can use the deploy job without configuring your default deploy configuration.
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "Configure my default deploy parameters - LivingApp" job.
2. Enter the BCD configuration you wish to use to deploy your default living application
3. Select the runtime to deploy to.
> Note: the Bonita version is displayed next to the runtime name
5. Click on the "Build" button to save the configuration
6. Make sure the job was successful:
![JobResult](images/DefDeployJobResult.png)