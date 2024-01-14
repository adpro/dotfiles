function tfv --description 'Shortcut for te'
    echo 'terraform fmt...' ; 
    terraform fmt
    echo 'terraform validate...'
    terraform validate
    echo 'tflint...'
    tflint
end