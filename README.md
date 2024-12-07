# AWS SAM Project
This project uses AWS SAM (Serverless Application Model) to deploy an AWS Lambda application in AWS.

# Project Contents
- app.py: The source code of the Lambda function, which performs a DynamoDB query and returns the result.
- template.yaml: The SAM template file that defines the AWS resources, including the Lambda function and the DynamoDB table.
- commands.sh: The AWS CLI commands to create an S3 bucket, package the SAM template, and deploy the application.
- template-generated.yaml: The SAM template file generated after packaging.
Usage
- Make sure you have the AWS CLI and AWS SAM CLI installed.
#Run the following commands in the terminal:
### Create an S3 bucket
```sh
aws s3 mb s3://khalil-ahmed-code-sam
```
### Package the SAM template
```sh
aws cloudformation package --s3-bucket khalil-ahmed-code-sam --template-file template.yaml --output-template-file template-generated.yaml
```
### Deploy the application
```sh
aws cloudformation deploy --template-file /Users/ahmed.khalef/Desktop/sam/template-generated.yaml --stack-name hello-world-lambda-sam --capabilities CAPABILITY_IAM
Once the deployment is complete, you can access your Lambda function's API at the following URL:
```



https://<API_ID>.execute-api.<REGION>.amazonaws.com/Prod/hello
Replace <API_ID> and <REGION> with the corresponding values displayed in the deployment output.

# Code Explanation
- `app.py`: This Lambda function performs a DynamoDB query to retrieve all items from the table and then returns the result.
- `template.yaml`: This file defines the necessary AWS resources to deploy the application, including the Lambda function and the DynamoDB table.
- `commands.sh`: These AWS CLI commands allow you to create an S3 bucket, package the SAM template, and deploy the application.
- `template-generated.yaml`: This file is generated during the SAM template packaging and contains the AWS resources with the appropriate parameters.
Feel free to modify the code and the SAM template according to your needs.