# Build and deploy a living application to Bonita Cloud Non Production Runtimes

## Build and deploy Job
This job combines the build and deploy jobs in to streamline your build and deploy process:

<div style="text-align:center">
    <img src="cloud/images/master/BuildDeployJob.png"> 
</div>

<!-- ![BuildAndDeployJob](images/BuildDeployJob.png) -->

## Launching a deployment
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Build and Deploy a LivingApp to a runtime" job.
2. Your default build and deploy configuration will be pre-loaded. If needed you can change it. 
3. You still need to select the build you want to deploy. 
You have several possibilities:
    * Last succesul build
    * Specifc build
    * Last Saved build
    * Upstream that triggered this job
    * Downstream build of
    * Last build with artifacts
    * Last completed build
    * Specified by permalink
    * Copy from WORKSPACE of latest completed build
4. You can also require an extra validation after the artifact copy by ticking the "Confirm deploy" checkbox.
5. Click on the build button (lower left).
6. You should see the job progress and steps.

## Result of a deployment

### Successful deployment
If the job is successful, you can directly access the corresponding portal (in order to test) by click on the link displayed in the job history:

<div style="text-align:center">
    <img src="cloud/images/master/LinkToPortal.png" width="100%"> 
</div>

<!-- ![LinktoPortal](images/LinkToPortal.png) -->

### Failed deployment
If the job fails, then you need to open its logs to understand the issues.
