seal secret:
    echo -n {{secret}} | kubeseal --raw --scope cluster-wide
    
