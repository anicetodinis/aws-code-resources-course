# make a bucket
aws s3 mb s3://mybucket

# list all buckets
aws s3 ls

# upload a file to the s3 bucket
aws s3 cp yourfile.ext s3://intro-aws-4524

# List contents in the s3 bucket
aws s3 ls s3://intro-aws-4524

# delete object
aws s3 rm s3://intro-aws-4524/yourfile.ext

# delete all objects in a bucket
aws s3 rm s3://myfirstbucket-53538hd --recursive
# Delete the bucket
aws s3 rb --force s3://intro-aws-4524