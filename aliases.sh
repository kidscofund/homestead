function kidscofund() {
    ( cd ~/KidsHomestead && vagrant $* )
}

function kidscofund-run() {
    PROJECTPATH=${$(pwd)##*Projects/KidsCoFund/development/}
    echo $(kidscofund ssh -- -t "cd projects/$PROJECTPATH && $*")
}

function kidscofund-ssh() {
    PROJECTPATH=${$(pwd)##*Projects/KidsCoFund/development/}
    ssh -p 2222 vagrant@localhost -t "cd projects/$PROJECTPATH ; /bin/bash"
}

alias kidscofundr='kidscofund-run'
alias kidscofundssh='kidscofund-ssh'
