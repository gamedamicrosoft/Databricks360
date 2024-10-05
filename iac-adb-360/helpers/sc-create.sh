#!/bin/bash
adoproject='adb360-051024'

export AZURE_DEVOPS_EXT_AZURE_RM_SERVICE_PRINCIPAL_KEY=''
# azure rm ado-sc
az devops service-endpoint azurerm create --azure-rm-service-principal-id 3afd1a53-fbef-4156-bbf3-13198770cd07 --azure-rm-subscription-id 1bf6f6d4-b209-4338-abc0-702ab91dd764 --azure-rm-subscription-name ME-MngEnvMCAP211549-gameda-1 --azure-rm-tenant-id 6305e991-1d65-4066-8d87-77c2111eb124 --name ado-sc --org https://dev.azure.com/medagan-admin --project $adoproject

export AZURE_DEVOPS_EXT_AZURE_RM_SERVICE_PRINCIPAL_KEY=''
# azure rm ado-sp
az devops service-endpoint azurerm create --azure-rm-service-principal-id c8eeb609-fc1f-416c-90db-19909bb1a677 --azure-rm-subscription-id 1bf6f6d4-b209-4338-abc0-702ab91dd764 --azure-rm-subscription-name ME-MngEnvMCAP211549-gameda-1 --azure-rm-tenant-id 6305e991-1d65-4066-8d87-77c2111eb124 --name adb-sc --org https://dev.azure.com/medagan-admin --project $adoproject


# github
export AZURE_DEVOPS_EXT_GITHUB_PAT=''
az devops service-endpoint github create --github-url https://github.com/gamedamicrosoft/Databricks360.git --name gh-sc --org https://dev.azure.com/medagan-admin --project $adoproject

