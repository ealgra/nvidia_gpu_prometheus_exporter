FROM golang as build
RUN go install github.com/ealgra/nvidia_gpu_prometheus_exporter@latest

FROM alpine:3
COPY --from=build /go/bin/nvidia_gpu_prometheus_exporter /
CMD /nvidia_gpu_prometheus_exporter
ENV NVIDIA_VISIBLE_DEVICES=all
EXPOSE 9445
