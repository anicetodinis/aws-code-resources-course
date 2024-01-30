# invoke lambda function using the cli
aws lambda invoke --function-name helloWorldFunction out --log-type Tail

# use base64 utility to decode the logs
aws lambda invoke --function-name helloWorldFunction out --log-type Tail \
--query 'LogResult' --output text |  base64 -d