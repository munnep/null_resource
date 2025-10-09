data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 45
    echo '{ "result": "done" }'
EOT
  ]
}

resource "null_resource" "test" {}

output "delay_result" {
  value = data.external.slow_delay.result
}
