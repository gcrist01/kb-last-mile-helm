{{/*
Kiwibank Labels and Annotations for Kubernetes
https://kiwibank.atlassian.net/wiki/spaces/CIP/pages/3922829261/Custom+Kiwibank+Labels+and+Annotations+for+Kubernetes
*/}}
{{- define "kiwibank.annotations" -}}
kiwibank.co.nz/application-support-email: {{ .Values.cip.teamname  | default (printf "undefined") }}@kiwibank.co.nz
kiwibank.co.nz/application-support-group: {{ .Values.cip.teamname  | default (printf "undefined") }} 
kiwibank.co.nz/business-service: {{ .Values.cip.snowci | default (printf "undefined") }}
kiwibank.co.nz/dr-rating:  {{ .Values.cip.DR | default (printf "undefined")}}
kiwibank.co.nz/environment: {{ .Values.cip.kb_pipeline_stage | default (printf "undefined") }}
kiwibank.co.nz/git-commit-hash: {{ .Values.cip.git_commit_hash }}
kiwibank.co.nz/major-version: {{ .Values.cip.major_version | quote }}
kiwibank.co.nz/minor-version: {{ .Values.cip.minor_version | quote }}
kiwibank.co.nz/patch-version: {{ .Values.cip.patch_version | quote }}
kiwibank.co.nz/name: {{ default .Values.domain.name .Values.app.name }}
{{- end -}}

{{- define "serviceaccount.annotations" -}}
eks.amazonaws.com/role-arn: {{ .Values.cip.runtime_role_arn | quote }}
{{- end -}}
