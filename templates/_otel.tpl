{{- define "otel.env" }}

- name: HULY_OTEL_MODE
  value: {{ .otelMode | quote }}

{{- if eq .otelMode "on" }}
- name: OTEL_EXPORTER_OTLP_ENDPOINT
  value: {{ .Values.otelOtlpEndpoint }} 
- name: OTEL_EXPORTER_OTLP_COMPRESSION
  value: gzip
{{- end}}

{{- end }}


