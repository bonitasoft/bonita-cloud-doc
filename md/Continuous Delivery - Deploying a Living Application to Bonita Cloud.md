# Deploying a Living Application to Bonita Cloud Non Production Runtimes
The job "ACTION - Deploy a LivingApp to a runtime" allows you deploy your living applications to any of your Bonita Cloud runtimes:

![DeployJob](/images/DeployJob.png)

## Launching a deployment
1. Click on the ![CDPlayButton](/images/JenkinsPlayButton.png) of the "ACTION - Deploy a LivingApp to a runtime" job.
2. Your default deploy configuration will be pre-loaded. If needed you can change it. 
3. You still neeed to select the build you want to deploy. 
You have several possibilities:
    * Last succesul build
    * Specifc build
    * Last Saved build
    * Upstream that triggered this job
    * Donwstream build of
    * Last build with artifacts
    * Last completed build
    * Specified by permalink
    * Copy from WORKSPACE of latest completed build
4. You can also require an extra validation after the artifact copy by ticking the "Confirm deploy" checkbox.
5. Click on the build button (lower left).
6. You should see the job progress and steps.

## Result of a deployment

### Successful deployment
If the job is successful, you can directly access the corresponding portal (in order to test) by click on the link displayed in th job history:

![LinktoPortal](/images/LinkToPortal.png)

### Failed deployment
If the job fails then you need to open its logs to understand the issues.