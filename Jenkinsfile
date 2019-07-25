node() {
  stage('Init') {
    echo "Building branch ${env.BRANCH_NAME}"
    def node = tool name: 'Node-11', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    env.PATH = "${node}/bin:${env.PATH}"
    checkout scm
  }

  stage('Lint') {
    sh 'npx markdownlint-cli $(find . -type f -name \'*.md\' -print)'
  }

  stage('Check for template errors') {
    sh 'npx handlebars -e md . > /dev/null'
  }
}
