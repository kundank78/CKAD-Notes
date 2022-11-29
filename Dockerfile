FROM ubuntu:18.04
COPY . /app
RUN make /app


CMD command param1 or CMD ["command", "param1"]
# change command at runtime: docker run ubuntu-sleeper sleep 10
# whatever passed at runtime will replace the command+param

ENTRYPOINT ["sleep"]
CMD ["5"]
# result = sleep 5
# change param at runtime: docker run ubuntu-sleeper 10 = sleep 10
# appends param after entry point cmd

# override entry point cmd: docker run --entrypoint sleep 2.0 ubuntu-sleeper 10

# pass env variables
# docker run -e APP_COLOR=pink simple-webapp-color

# docker run --user=1000 ubuntu sleep 3600  ---->


