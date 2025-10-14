data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 51
    echo '{ "result": "done" }'
EOT
  ]
}

resource "null_resource" "test2" {}

output "delay_result" {
  value = data.external.slow_delay.result
}
