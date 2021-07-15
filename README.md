NVIDIA GPU Prometheus Exporter
------------------------------

This is a [Prometheus Exporter](https://prometheus.io/docs/instrumenting/exporters/) for
exporting NVIDIA GPU metrics. It is a fork of github.com/mindprince/nvidia_gpu_prometheus_exporter, with added metrics of average gpu load and additional prometheus label
```

## Running using [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

```
nvidia-docker run -p 9445:9445 -ti -e "ADDITIONAL_LABEL"="Some additional label" ealgra/nvidia_gpu_prometheus_exporter:0.1
```
