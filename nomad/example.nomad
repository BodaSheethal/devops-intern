job "hello" {
  datacenters = ["local"]
  type = "batch"

  group "hello-group" {
    task "hello-task" {
      driver = "raw_exec"

      config {
        command = "echo"
        args    = ["Hello, Nomad!"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
