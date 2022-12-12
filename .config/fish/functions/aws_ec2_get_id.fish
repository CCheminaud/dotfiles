function aws_ec2_get_id -d "Returns ID(s) of EC2 instances" -a name
    aws ec2 describe-instances \
        --filters "Name=tag:Name,Values=$name" "Name=instance-state-name,Values=running" \
        --query "Reservations[*].Instances[*].{Instance:InstanceId}" \
        --output text \
    | cat
end
