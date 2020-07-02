# Deploying a Living Application to Bonita Cloud Non Production Runtimes

## Deploy Job
The job "ACTION - Deploy a LivingApp to a runtime" allows you to deploy your living applications to any of your Bonita Cloud runtimes with the development or production polices:

<div style="text-align:center">
    <img src="cloud/images/master/DeployJob.png"> 
</div>

<div style="text-align:center">
    <img src="cloud/images/master/NonProdBuildForm.jpg"> 
</div>

## Launching a deployment
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Deploy a LivingApp to a runtime" job.
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
4. Select the target runtime (note that only non-production runtimes are available - to deploy in production see [here](Continuous_Delivery_Building_a_Living_Application_Prod.md))
5. You can also select the deployment policies to apply.

::: info 

|Artifact         |Development Policy(default)                           |Production Polict(checkbox ticked)                     |
|------------------|-----------------------------------------------------|-------------------------------------------------------|
|Applications      |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">REPLACE_DUPLICATES</code>  |
|Organization      |<code class="descclassname">MERGE_DUPLICATES</code>  |<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Processes         |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Profiles          |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">IGNORE_IF_ANY_EXISTS</code>|

:::

6. For troubleshooting purposes, you can active the "Debug_mode" option to activate the debug verbose mode.
7. Click on the build button (lower left).
8. You should see the job progress and steps.

## Result of a deployment

### Successful deployment
If the job is successful, you can directly access the corresponding portal (in order to test) by click on the link displayed in the job history:

<div style="text-align:center">
    <img src="cloud/images/master/LinkToPortal.png" width="100%"> 
</div>

<!-- ![LinktoPortal](images/LinkToPortal.png) -->

### Failed deployment
If the job fails then you need to open its logs to understand the issues.
