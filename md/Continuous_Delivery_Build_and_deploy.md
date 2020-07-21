# Build and deploy a living application to Bonita Cloud Non Production Runtimes

## Build and deploy Job
This job combines the build and deploy jobs to streamline your build and deploy process with the development or production polices:

<div style="text-align:center">
    <img src="cloud/images/master/BuildDeployJob.png"> 
</div>

## Launching a deployment
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Build and Deploy a LivingApp to a runtime" job.
2. Your default build and deploy configuration will be pre-loaded. If needed you can change it (includes the repository URL and branch)
3. Select the target runtime (note that only non-production runtimes are available - to deploy in production see [here](Continuous_Delivery_Building_a_Living_Application_Prod.md))
4. You can also select the deployment policies to apply.

::: info 

|Artifact         |Development Policy(default)                           |Production Polict(checkbox ticked)                     |
|------------------|-----------------------------------------------------|-------------------------------------------------------|
|Applications      |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">REPLACE_DUPLICATES</code>  |
|Organization      |<code class="descclassname">MERGE_DUPLICATES</code>  |<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Processes         |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">IGNORE_DUPLICATES</code>   |
|Profiles          |<code class="descclassname">REPLACE_DUPLICATES</code>|<code class="descclassname">IGNORE_IF_ANY_EXISTS</code>|

:::

5. For troubleshooting purposes, you can activate the "Debug_mode" option to activate the debug verbose mode.
6. Click on the build button (lower left).
7. You should see the job progress and steps.

## Result of a deployment

### Successful deployment
If the job is successful, you can directly access the corresponding portal (in order to test) by click on the link displayed in the job history:

<div style="text-align:center">
    <img src="cloud/images/master/LinkToPortal.png" width="100%"> 
</div>

<!-- ![LinktoPortal](images/LinkToPortal.png) -->

### Failed deployment
If the job fails, then you need to open its logs to understand the issues.
