const { execSync } = require('child_process')

exports.handler = async (event) => {
  execSync('k6 version', { encoding: 'utf8', stdio: 'inherit' })
}
