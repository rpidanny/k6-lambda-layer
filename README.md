# k6-lambda-layer

AWS Lambda layer with [k6](https://k6.io) binaries.

## Getting Started

You can add this layer to any Lambda function you want. `PATH` already includes `/opt/bin` in Lambda, which is where it will be mounted.

## Build and Publish the Lambda Layer

- `cd amazon-linux-1` or `cd amazon-linux-2`
- Run `./build.sh` to build the layer with k6 binary
- Run `./publish.sh` to upload the layer to AWS

After the lambda layer has been uploaded, click on Layers and choose `Add a layer`, and `Provide a layer version ARN` and enter the following ARN (replace `AWS_REGION` with the region of your Lambda and `AWS_PROFILE` with your AWS account ID):

`arn:aws:lambda:<AWS_REGION>:<AWS_PROFILE>:layer:k6:1`

## Simple example with Node.js

```js
const { execSync } = require('child_process')

exports.handler = async (event) => {
  execSync('k6 version', { encoding: 'utf8', stdio: 'inherit' })
}
```

## Simple example with Python

```python
import os

def handler(event, context):
  return os.system("k6 version")

```
