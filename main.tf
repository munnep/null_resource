data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 5
    echo '{ "result": "done" }'
EOT
  ]
}

resource "null_resource" "test7" {}


resource "null_resource" "test8" {}

output "delay_result" {
  value = data.external.slow_delay.result
}
   
