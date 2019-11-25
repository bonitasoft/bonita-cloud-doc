#!/usr/bin/env groovy

boolean isVersionSupported(version, supportedVersions) {
    def result = false
    for (supported in supportedVersions.tokenize(',')) {
        if (supported == version) {
            result = true
            break
        }
    }
    def status = result ? 'supported' : 'NOT supported'
    println "Version <$version> is $status on this environment."
    return result
}


node {
    stage 'Checkout'
    def branch_name = env.BRANCH_NAME
    println "Checking out branch $branch_name"
    checkout scm
    
    stage 'Build'
    def nodejsHome = tool name: 'NodeJS_424', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'
    sh """#!/bin/bash
set -e

env | sort -u

echo "### Cleaning previous build (except index.html)"
shopt -s extglob
rm -rf build
echo ""

echo "### Converting .md to .html"
PATH=\$PATH:${nodejsHome}/bin
npm install
scripts/convertMdToHtml.js cloud
scripts/taxonomy.js
echo ""

echo "### Creating doc html archive"
archive_name=doc-cloud-html-\$BRANCH_NAME-`date +"%Y%m%d_%H%M%S"`.tar.gz
rm -rf doc-cloud-html*.tar.gz doc-cloud-html
mkdir doc-cloud-html && ln -s ../build/html doc-cloud-html/html && ln -s ../md/images doc-cloud-html/images
tar czf \$archive_name --dereference doc-cloud-html
echo ". Generated archive: \$archive_name"
echo ""

echo "Done."
"""

    stage 'Archive'
    archive '**/doc-cloud-html*.tar.gz'
    
    stage 'Deploy'
    parallel preprod: {
        if (isVersionSupported(branch_name, env.GLOBAL_PREPROD_BCD_VERSIONS)) {
            build job: 'push-content-preprod', parameters: [[$class: 'StringParameterValue', name: 'ARE_YOU_SURE', value: 'Yes']]
        }
    }, prod: {
        if (isVersionSupported(branch_name, env.GLOBAL_PROD_BCD_VERSIONS)) {
            build job: 'push-content-prod', parameters: [[$class: 'StringParameterValue', name: 'ARE_YOU_SURE', value: 'Yes']]
        }
    },
    failFast: false
}
