import json
import random
import uuid
import boto3

# Get the service resource.
db = boto3.client('dynamodb')
id_db=uuid.uuid4()


def add_quote(quote):
    # TableName MUST be the same as the name you added in DynamoDB when creating the table
    db.put_item(TableName='Tester', 
                Item={'id':{'S':str(id_db)},
                      'quote':{'S':str(quote)}})
    
    
def lambda_handler(event, context):
    quote = random.choice(["Life is great", "AWS Lambdas rock", "What a day!"])
    if quote:
        add_quote(quote)
        
    return {
        'statusCode': 200,
        'body': json.dumps(f'Hello there this is {quote}')
    }


#====================================================
# Scan DB function - used for testing if the lambda function can connect to DynamoDB 
def lambda_handler(event, context):
    data = db.scan(TableName='Tester')
    return {
        'statusCode': 200,
        'body': json.dumps('Success')
    }