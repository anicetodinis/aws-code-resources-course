# make a bucket
aws s3 mb s3://mybucket

# list all buckets
aws s3 ls

# upload a file to the s3 bucket
aws s3 cp yourfile.ext s3://intro-aws-32732ds

aws s3 cp error.html s3://mywebsite-32sad
aws s3 cp index.html s3://mywebsite-32sad
aws s3 cp bucket.png s3://mywebsite-32sad


# List contents in the s3 bucket
aws s3 ls s3://intro-aws-32732ds

# delete object
aws s3 rm s3://intro-aws-32732ds/bucket.png

# delete all objects in a bucket
aws s3 rm s3://myfirstbucket-323362fd --recursive
aws s3 rm s3://mywebsite-32sad --recursive
# Delete the bucket
aws s3 rb --force s3://mywebsite-32sad