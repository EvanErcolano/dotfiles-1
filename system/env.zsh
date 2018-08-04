export EDITOR='vim'
export MANPAGER="less -X"

#WM specific environment stuff the rest of the way down.
export PROJECT_ROOTS="/Users/evanercolano/devel"
export GRADLE_OPTS="${GRADLE_OPTS} -Djavax.net.ssl.trustStore=$HOME/.artifactory_cacerts -Djavax.net.ssl.trustStorePassword=changeit"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export MAVEN_OPTS="-server -Xms2G -Xmx6G -XX:MaxPermSize=512M -Xss1024k -Djavax.net.ssl.trustStore=/Users/evanercolano/.artifactory_cacerts -Djavax.net.ssl.trustStorePassword=changeit"
export WM_HOME=~/devel

alias flyway.info='cd ${WM_HOME}/application && mvn -Dflyway.sqlMigrationPrefix= flyway:info && cd -'
alias flyway.repair='cd ${WM_HOME}/application && mvn -Dflyway.sqlMigrationPrefix= flyway:repair && cd -'
alias flyway.clean='cd ${WM_HOME}/application && mvn flyway:clean && cd -'
alias flyway.migrate='cd ${WM_HOME}/application && mvn -Dflyway.sqlMigrationPrefix= flyway:migrate && cd -  '
alias fronk.migrate='flyway.clean && cd ${WM_HOME}/fronk-db && git pull --rebase upstream development && ./restore-db wmmarket ir0n27 wm_marketcore localhost 3306 wm_marketcore 2>&1 && cd - && flyway.migrate'

source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
test -e ~/.gradlerc && source ~/.gradlerc

VAGRANT_HOSTNAME=api-gateway-fabio

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/evanercolano/.sdkman"
[[ -s "/Users/evanercolano/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/evanercolano/.sdkman/bin/sdkman-init.sh"
