# nomad/hello.nomad
job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    count = 1

    task "hello" {
      driver = "docker"

      config {
        image = "hello-python:latest"        # <-- your Docker image name
        port_map = [
          { http = 8080 }
        ]
      }

      resources {
        cpu    = 100     # minimal CPU (100 MHz)
        memory = 128     # minimal memory (128 MB)

        network {
          mbits = 10
          port "http" {}
        }
      }

      service {
        name = "hello"
        port = "http"

        check {
          name     = "tcp-health"
          type     = "tcp"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }
  }
}
