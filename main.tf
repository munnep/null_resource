data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 4
    echo '{ "result": "done" }'
EOT
  ]
}

resource "null_resource" "test3" {}

output "delay_result" {
  value = data.external.slow_delay.result
}
