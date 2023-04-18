FROM halohub/halo:2.4

ENV HALO_CONFIG_PATH "/root/.halo2"

RUN mkdir -p $HALO_CONFIG_PATH

CMD ["start"]
