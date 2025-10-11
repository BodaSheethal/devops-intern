## Run with Nomad

**Prerequisites**
- Nomad CLI installed and a Nomad agent (client) available.
  - For local testing you can run `nomad agent -dev` on the machine that has Docker.
- Docker available on the Nomad client(s) (if using the Docker driver).
- The Docker image used in `nomad/hello.nomad` must be accessible to the Nomad client:
  - either built locally on the node(s) running the Nomad client, or
  - pushed to a registry (Docker Hub, GHCR, private registry) and publicly/persistently accessible.

**Run the job**
```bash
# from repo root
nomad job run nomad/hello.nomad
