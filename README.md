# k6-lambda-layer

AWS Lambda layer with K6 binaries.

## Usage

- Run `./build.sh` to build the layer with k6 binary
- Run `./publish.sh` to upload the layer to AWS

After the lambda layer has been uploaded, click on Layers and choose `Add a layer`, and `Provide a layer version ARN` and enter the following ARN (replace `AWS_REGION` with the region of your Lambda and `AWS_PROFILE` with your AWS account ID):

`arn:aws:lambda:<AWS_REGION>:<AWS_PROFILE>:layer:k6:1`
