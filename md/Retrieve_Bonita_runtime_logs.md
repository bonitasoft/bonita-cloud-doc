# Retrieve Bonita Runtime Logs

## Retrieve Bonita Logs Job
The job "ACTION - Retrieve Bonita runtime logs" to retrieve the logs of your Bonita runtime.

<div style="text-align:center">
    <img src="cloud/images/master/RetrieveLogsEntryPoint.png"> 
</div>

## Retrieving the logs
1. Click on the ![CDPlayButton](images/JenkinsPlayButton.png) of the "ACTION - Retrieve Bonita runtime logs" job.
2. This will open a form that enables you to configure the time range of the logs, the output format of the log file (csv or json) and  the target runtime

<div style="text-align:center">
    <img src="cloud/images/master/ProdBuildForm.png"> 
</div>

3. Click on the "Build" button to request the logs
4. When the job is finished, the job will have build artififact that contains the logs

<div style="text-align:center">
    <img src="cloud/images/master/LogsArtifact.png"> 
</div>

5. Download the artifact to access your logs
