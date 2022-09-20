# Need to copy benchmark_main binary under the project folder.
# cp bazel-bin/perf_benchmark/benchmark_main ./

FROM debian:bookworm
RUN mkdir /app /app/perf_benchmark

COPY /benchmark_main /app/benchmark_main
COPY /perf_benchmark/benchmark_service.textproto /app/perf_benchmark/benchmark_service.textproto

WORKDIR /app
CMD ./benchmark_main