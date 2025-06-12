data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 60
    echo '{ "result": "done" }'
EOT
  ]
}

output "delay_result" {
  value = data.external.slow_delay.result
}
