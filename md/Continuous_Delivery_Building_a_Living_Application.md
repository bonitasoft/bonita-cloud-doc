# Building a Living Application

## Build Job
The job "ACTION - Build a LivingApp" allows you build your living applications:

<div style="text-align:center">
    <img src="cloud/images/master/BuildJob.png"> 
</div>

<!-- ![BuildJob](images/BuildJob.png) -->

## Launching a build
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Build a LivingApp" job.
2. Your default build configuration will be pre-loaded. If needed you can change it.
3. Click on the build button (lower left).
4. You should see the job progress and steps.

<div style="text-align:center">
    <img src="cloud/images/master/BuildInProgress.png"> 
</div>

<!-- ![BuildJobInProgress](images/BuildInProgress.png) -->

## Result of a build

### Successful build
If the job is successful, you can consult and download the artifactes created from the build.

You can either see them in the job overview or the detail of the specific build job instance:
* Job Overview
::: warning
Warning if your last job fails, it will still display the last successful artifacts.
:::
  * Open the job by clicking on its title
  
  <div style="text-align:center">
    <img src="cloud/images/master/BuildClickToAccessOverview.png"> 
  </div>
  <!-- ![BuildClickToAccessOverview](images/BuildClickToAccessOverview.png) -->

  * In the top of the page, you will find the last successful build artefacts
  
  <div style="text-align:center">
    <img src="cloud/images/master/OverviewArtefacts.png"> 
  </div>
  <!-- ![OverviewArtefacts](images/OverviewArtefacts.png) -->

* Job instance detail
 ::: info
 This also allows you to consult previous build result
 :::
  * Open the specific job instance by click on its ID

  <div style="text-align:center">
    <img src="cloud/images/master/AccessJobDetails.png"> 
  </div>
  <!-- ![AccessJobDetails](images/AccessJobDetails.png) -->

  * You can now consult the result of that job instance:
  
  <div style="text-align:center">
    <img src="cloud/images/master/JobDetails.png"> 
  </div>

  <!-- ![AccessJobDetails](images/JobDetails.png) -->

### Failed Build
If the job fails then you need to open its logs to understand the issues.

#### Example
The below build job has failed

<div style="text-align:center">
    <img src="cloud/images/master/Job158Failed.png"> 
</div>
<!-- ![Job158Failed](images/Job158Failed.png) -->

In order to get more information on the issue, all you need to is click on the step that failed and information on the error will be displayed:

<div style="text-align:center">
    <img src="cloud/images/master/Job158FailedLogs.png.png"> 
</div>

<!-- ![Job158FailedLogs](images/Job158FailedLogs.png) -->

If this isn't enough than you can click on the "Logs" button to have the full logs:

<div style="text-align:center">
    <img src="cloud/images/master/Job158FailedLogsDetails.png"> 
</div>
<!-- ![Job158FailedLogsDetails](images/Job158FailedLogsDetails.png) -->
