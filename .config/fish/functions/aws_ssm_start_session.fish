function aws_ssm_start_session -d "Start a new SSM session" -a ec2_id
    aws ssm start-session --target $ec2_id
end
