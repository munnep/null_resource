resource "null_resource" "previous" {}

resource "time_sleep" "wait" {
  depends_on = [null_resource.previous]

  create_duration = "120s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait]
}
