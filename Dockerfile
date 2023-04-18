FROM halohub/halo:2.4

ENV HALO_CONFIG_PATH "/root/.halo2"

RUN mkdir -p $HALO_CONFIG_PATH

CMD [
"--halo.external-url=http://localhost:8090/",
"--halo.security.initializer.superadminusername=admin",
"--halo.security.initializer.superadminpassword=Gudu520@.",
"--spring.r2dbc.url=r2dbc:pool:mysql://gz-cynosdbmysql-grp-n17nn47r.sql.tencentcdb.com:24742/halo",
"--spring.r2dbc.username=root",
"--spring.r2dbc.password=Gudu520@.",
"--spring.sql.init.platform=mysql"
]

EXPOSE 8090
