import json
import time

print('Loading function...')

def lambda_handler(event, context):
    
    t = time.localtime()
    current_time = time.strftime("%H:%M", t)
    
    # Parse out query string params
    quote_id = event['queryStringParameters']['quote_id']
    quote = event['queryStringParameters']['quote']
   
    
    # Construct the body of the request
    response = {}
    response['quote_id'] = quote_id
    response['quote'] = quote
    response['time'] = current_time
    
    # construct http response object
    response_obj = {}
    response_obj['statusCode'] = 200
    response_obj['body'] = json.dumps(response)
    
    # Return the response object
    return response_obj