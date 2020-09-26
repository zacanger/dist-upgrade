/* eslint-disable no-process-exit, no-console */

import { spawn } from 'child_process'
import { join } from 'path'

const arg = process.argv[2]

if (arg) {
  if (arg === '-h' || arg === '--help') {
    console.log('dist-upgrade usage:')
    console.log('dist-upgrade    # install latest global Node, npm, and npx')
    console.log('dist-upgrade -h # show this help')
    process.exit(0)
  }
}

const npxBin = join(__dirname, '..', 'node_modules', '.bin', 'npx')

spawn(
  npxBin +
    ' n latest && npm i -g npm@next && npm i -g npx && echo "node `node -v`; npm `npm -v`; npx `npx -v`"',
  [],
  {
    stdio: 'inherit',
    shell: true,
  }
)
