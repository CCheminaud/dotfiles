function aws_ssm_get_parameter -d 'Returns an SSM parameter value decrypted' -a prefix
    aws ssm get-parameters \
        --with-decryption \
        --names $prefix \
        --query 'Parameters[].Value' \
        --output text \
    | cat
end
