To test if you already have an active session, run the following AWS CLI command
``aws sts get-caller-identity``

Build a new CDK app using typescript programming language
``cdk init app --language=typescript``


Create the necessary resources for our cdk app (mainly an S3 bucket for our environment)
``cdk bootstrap``

Print the CloudFormation template of the stack
``cdk synthesize``

List all stacks
``cdk list``


Deploy your stack
``cdk deploy``

Compares the specified stack and its dependencies with the deployed stacks  
``cdk diff``


Destroy your stack (Delete)
``cdk destroy``


Checks your cdk project for potential errors
``cdk doctor``