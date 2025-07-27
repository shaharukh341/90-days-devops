                     +-----------------------+
                     |    ConfigMap (YAML)   |
                     |-----------------------|
                     |  APP_MODE=production  |
                     |  LOG_LEVEL=debug      |
                     |  FEATURE_FLAG=true    |
                     +----------+------------+
                                |
                +---------------+------------------+
                |                                  |
        [ Inject as Env ]                  [ Mount as Volume ]
                |                                  |
     +----------v-----------+            +---------v----------+
     | Pod: configmap-demo  |            | Pod: configmap-vol |
     | Uses `envFrom`       |            | Mounts to /etc/config |
     +----------------------+            +---------------------+


                     +----------------------+
                     |     Secret (Opaque)  |
                     |----------------------|
                     |  DB_USER=admin       |
                     |  DB_PASS=secret123   |
                     +----------+-----------+
                                |
                        [ Inject as Env ]
                                |
                     +----------v----------+
                     |   Pod: secret-demo   |
                     | Uses `valueFrom`     |
                     +----------------------+
