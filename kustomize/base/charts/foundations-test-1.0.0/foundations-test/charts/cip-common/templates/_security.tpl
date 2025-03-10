{{/*
Return the proper podSecurityContext
*/}}
{{- define "kiwibank.podSecurityContext" -}}
fsGroup: 1001
{{- end -}}


{{- define "kiwibank.containerSecurityContext" -}}
runAsUser: 1001
runAsNonRoot: true
privileged: false
allowPrivilegeEscalation: false
capabilities:
  drop: ["ALL"]
seccompProfile:
  type: "RuntimeDefault"
{{- end -}}
