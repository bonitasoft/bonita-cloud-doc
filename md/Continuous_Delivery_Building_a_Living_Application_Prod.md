# Deploying a Living Application to Bonita Cloud Production Runtimes

## Deploy Job
The job "ACTION - Deploy a LivingApp to a production runtime" allows you deploy your living applications to any of your **production** Bonita Cloud runtimes:

<div style="text-align:center">
    <img src="cloud/images/master/DeployProdJob.png"> 
</div>

<div style="text-align:center">
    <img src="cloud/images/master/ProdBuildForm.png"> 
</div>

## Launching a deployment
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Deploy a LivingApp to a production runtime" job.
2. Your default deploy configuration will be pre-loaded. If needed you can change it. 
3. You still need to select the build you want to deploy. 
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
4. Select the target runtime (note that only production runtimes are available - to deploy on non-production runtimes see [here](Continuous_Delivery_Deploying_a_Living_Application_to_Bonita_Cloud.md))
5. For troubleshooting purposes, you can active the "Debug_mode" option to activate the debug verbose mode.
6. Click on the build button (lower left).
7. You should see the job progress and steps.

::: info The production deployment will be used
|Artifact          |Production Policy                                                 |
|------------------|-------------------------------------------------------|
|Applications      |<code class="descclassname">REPLACE_DUPLICATES</code>  |
|Organization      |<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Processes         |<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Profiles          |<code class="descclassname">IGNORE_IF_ANY_EXISTS</code>|
:::


## Result of a deployment

### Successful deployment
If the job is successful, you can directly access the corresponding portal (in order to test) by click on the link displayed in the job history:

<div style="text-align:center">
    <img src="cloud/images/master/LinkToPortal.png" width="100%"> 
</div>

