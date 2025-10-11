job "hello2" {
  datacenters = ["local"]
  type        = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "exec"

      config {
        command = "cmd.exe"
        args    = ["/c", "echo Hello World"]
      }

      resources {
        cpu    = 100
        memory = 128
        disk   = 300
      }
    }
  }
}
