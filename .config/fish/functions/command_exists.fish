function command_exists -a name -d "Check if a command exists"
    type --query "$name"
end
