function aws_ssm_forward_port -d "Start a new SSM session forwarding ports" -a ec2_id port_1 port_2
    aws ssm start-session \
        --target $ec2_id \
        --document-name AWS-StartPortForwardingSession \
        --parameters "{\"portNumber\":[\"$port_1\"], \"localPortNumber\":[\"$port_2\"]}"
end
