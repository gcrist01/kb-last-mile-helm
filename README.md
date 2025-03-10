# Kustomization Setup for foundations-test helm chart

## Create Required Folders & Files

Create kustomization.yaml and a deployment patch file.
Splitting the OCI Chart URL

The OCI Helm chart URL (oci://041371538652.dkr.ecr.ap-southeast-2.amazonaws.com/foundations-test) is split into:
Repo: oci://041371538652.dkr.ecr.ap-southeast-2.amazonaws.com
Chart Name: foundations-test
Defining the kustomization.yaml

## Uses the Helm chart for foundations-test.
S
ets the release name as foundations-test.
Specifies a values file (defulat-helm-values.yaml).

A deployment patch (Deployment-external-dns-replace.yaml) is included to modify the foundations-test deployment.
Building the Kustomization

## Command to generate the final YAML:

kustomize build infra-deployments/external-dns/cf-myorg--com/kustomizations --enable-helm > infra-deployments/external-dns/cf-myorg--com/kustomizations/foundations-test.kustimized.yaml
This version updates the chart reference from external-dns to foundations-test and points the repository to AWS ECR. Let me know if you need more refinements! 🚀
