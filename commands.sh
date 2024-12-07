aws s3 mb s3://khalil-ahmed-code-sam 

aws cloudformation package --s3-bucket khalil-ahmed-code-sam --template-file template.yaml --output-template-file template-generated.yaml 

aws cloudformation deploy --template-file /Users/ahmed.khalef/Desktop/sam/template-generated.yaml --stack-name hello-world-lambda-sam --capabilities CAPABILITY_IAM  