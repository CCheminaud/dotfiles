function aws_ec2_list_instances -d "List all EC2 instances" -a prefix
    aws ec2 describe-instances \
        --filter "Name=tag:Name,Values=$prefix-*" \
        --query 'Reservations[*].Instances[*].[LaunchTime,InstanceId,PrivateIpAddress,Tags[?Key==`Name`] | [0].Value][] | sort_by(@, &[3])' \
        --output table \
    | cat
end
