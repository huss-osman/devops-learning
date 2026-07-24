# Serverless API with Lambda, IAM & API Gateway

![Cloud](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![Lambda](https://img.shields.io/badge/AWS-Lambda-orange)
![API Gateway](https://img.shields.io/badge/AWS-API_Gateway-orange)
![DynamoDB](https://img.shields.io/badge/AWS-DynamoDB-orange)

<p align="center">
  <img width="850" alt="Serverless API Architecture" src="https://github.com/user-attachments/assets/7ecc4e52-dd91-4941-87f6-62083c3f08ce" /> 
</p>

This project demonstrates how to build a **production-style serverless REST API** using Amazon API Gateway, AWS Lambda, and Amazon DynamoDB. The API accepts HTTP POST requests through Amazon API Gateway, processes them using an AWS Lambda function, and stores the submitted data in an Amazon DynamoDB table.

The objective was to understand how serverless applications are built using AWS managed services. The project covers API Gateway, AWS Lambda, DynamoDB, IAM permissions, and CloudWatch Logs to demonstrate how event-driven applications can be securely deployed and managed without provisioning servers.

---

## Objective

The goal of this project was to:

- Build a REST API using Amazon API Gateway
- Process requests using AWS Lambda
- Store application data in Amazon DynamoDB
- Configure least-privilege IAM permissions
- Return structured JSON responses
- Test the API using curl
- Verify data storage and CloudWatch logging

---

## What It Deploys

The project provisions a production-style serverless application using fully managed AWS services.

Infrastructure deployed:

- Amazon DynamoDB Table
- AWS Lambda Function
- IAM Execution Role
- Amazon API Gateway REST API
- Amazon CloudWatch Logs

---

## How It Works

1. A client sends a POST request to Amazon API Gateway.
2. API Gateway forwards the request to AWS Lambda using Lambda proxy integration.
3. Lambda generates a UUID and timestamp.
4. The submitted payload is written into Amazon DynamoDB.
5. Lambda returns a structured JSON response.
6. CloudWatch automatically records execution logs for monitoring and troubleshooting.

---

# Creating the DynamoDB Table

An Amazon DynamoDB table named **students** was created using the following configuration:

- **Partition key:** `id`
- **Partition key type:** String
- **Capacity mode:** On-demand
- **Sort key:** None

<p align="center">
<img width="1000" alt="DynamoDB Table" src="https://github.com/user-attachments/assets/c0012a24-4b12-41db-9014-a339bf818787" /> 

</p>

Amazon DynamoDB is a fully managed NoSQL database designed for low-latency, high-performance workloads.

Unlike traditional relational databases, DynamoDB stores data as flexible items rather than fixed rows and columns, making it well suited for serverless applications.

The `id` partition key uniquely identifies every record stored in the table, allowing DynamoDB to efficiently locate individual items.

Using **On-demand** capacity mode means AWS automatically scales read and write capacity based on incoming traffic while charging only for requests made, eliminating the need to provision throughput in advance.

---

# Creating the Lambda Function

`submit-student`, on the **Python 3.13** runtime. It generates a UUID, stores `{ id, timestamp, payload }`, and returns a structured JSON response, with error handling that logs to CloudWatch.

```python
import json
import uuid
from datetime import datetime, timezone
import boto3

# boto3 is the AWS SDK for Python - it lets the code talk to AWS.
# It's pre-installed in Lambda, so there's nothing to package.
dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('students')

def lambda_handler(event, context):
    try:
        # API Gateway passes the request body as a text string in event['body'].
        # json.loads() turns that text into a Python dictionary.
        body = json.loads(event.get('body') or '{}')

        item = {
            'id': str(uuid.uuid4()),                              # unique record ID
            'timestamp': datetime.now(timezone.utc).isoformat(),  # when it arrived
            'payload': body                                       # whatever the user sent
        }

        table.put_item(Item=item)   # the single DynamoDB write - the PutItem action

        return {
            'statusCode': 200,
            'headers': {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'   # CORS header for browsers
            },
            'body': json.dumps({
                'message': 'Student stored successfully',
                'id': item['id']
            })
        }

    except Exception as e:
        print(f"Error: {e}")   # print() goes straight to CloudWatch logs
        return {
            'statusCode': 500,
            'headers': {
                'Content-Type': 'application/json',
                'Access-Control-Allow-Origin': '*'
            },
            'body': json.dumps({'message': 'Something went wrong'})
        }
```

<p align="center">
<img width="1000" alt="Lambda Function" src="https://github.com/user-attachments/assets/5de6facf-9cba-49c1-bee2-6024813f5f74" /> 
</p>

<p align="center">
<img width="1000" alt="Lambda Function" src="https://github.com/user-attachments/assets/96e43323-4607-4167-9530-1651cadf1e0f" /> 
</p>

Lambda is **serverless** compute - code that runs only when something calls it, with no servers to manage and billing by the millisecond. The `lambda_handler` is the entry point AWS calls; the `event` is the incoming request from API Gateway. The response has a specific `statusCode` / `headers` / `body` shape because of **proxy integration** (set up in step 4) - the function writes its reply in the exact format API Gateway passes straight back to the caller. The `try / except` is the error handling: any failure is printed to CloudWatch and returned as a clean `500`.

---

# Configuring the IAM Execution Role

The Lambda execution role was configured following the principle of least privilege.

The role includes:

- Basic Lambda execution permissions for CloudWatch Logs
- Permission to perform `dynamodb:PutItem`
- Access restricted to the `students` DynamoDB table only

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "dynamodb:PutItem",
      "Resource": "arn:aws:dynamodb:eu-west-2:606349121896:table/students"
    }
  ]
}
```

<p align="center">
<img width="1000" alt="IAM Execution Role" src="https://github.com/user-attachments/assets/268ed926-4067-4feb-a0b3-15d484b5ec68" />
</p>

TThe execution role is the identity that AWS Lambda assumes whenever the function runs.

The role was configured with the `dynamodb:PutItem` permission for the `students` table, following the principle of least privilege by granting only the permissions required.

The role also includes the basic CloudWatch logging policy, allowing execution logs and errors to be written automatically to `Amazon CloudWatch Logs`.

---

# Building the API Gateway REST API

An Amazon API Gateway REST API named **students-api** was created to expose the Lambda function through a public HTTP endpoint.

The API was configured with:

- REST API
- Resource: `/submit`
- Method: `POST`
- Lambda Proxy Integration
- CORS enabled
- Deployment stage: `prod`

<p align="center">
<img width="1000" alt="API Gateway REST API" src="https://github.com/user-attachments/assets/d8f6be1f-d927-4892-b262-4527aed392fb" />
</p>

The deployed endpoint follows the format:

```text
https://rvz10flafl.execute-api.eu-west-2.amazonaws.com/prod
```

Amazon API Gateway acts as the public entry point for the application.

When a client submits a POST request, API Gateway forwards the entire HTTP request directly to the Lambda function using **Lambda Proxy Integration**. Once Lambda finishes processing the request, its response is returned directly to the client without additional mapping.

Cross-Origin Resource Sharing (CORS) was enabled to allow browser-based applications hosted on different origins to access the API. Enabling CORS automatically creates an `OPTIONS` method used by browsers during preflight requests.

Finally, the API was deployed to a stage named **prod**, creating a publicly accessible endpoint that clients can use to submit requests.

---

# Testing the Serverless API

The deployed API was tested using `curl` by sending a POST request containing JSON data.

```bash
curl -X POST https://rvz10flafl.execute-api.eu-west-2.amazonaws.com/prod/submit \
  -H "Content-Type: application/json" \
  -d '{"name":"Mo","module":"AWS"}'
```

<p align="center">
<img width="1000" alt="Serverless API Test" src="https://github.com/user-attachments/assets/53ea5eff-75d4-4c5a-a4c5-e63b10077e8b" /> 
</p>

<p align="center">
<img width="1000" alt="Serverless API Test" src="https://github.com/user-attachments/assets/48d8dd26-c65a-447c-aab5-e6bbe6104483" /> 
</p>

<p align="center">
<img width="1000" alt="Serverless API Test" src="https://github.com/user-attachments/assets/9f1efc30-abfd-4a71-b779-a084efe15d19" />
</p>

The completed test confirmed that:

- Amazon API Gateway successfully received the HTTP POST request.
- API Gateway invoked the Lambda function.
- Lambda processed the request and generated a UUID and timestamp.
- The submitted payload was stored inside the DynamoDB table.
- A structured JSON response was returned to the client.
- CloudWatch automatically recorded the Lambda execution logs.

Together, these components demonstrate a complete event-driven serverless workflow running entirely on managed AWS services.

---

# Cleaning Up the Infrastructure

Although AWS Lambda charges only when code executes, other services such as Amazon API Gateway and Amazon DynamoDB can continue to incur charges if left deployed.

To clean up the infrastructure:

- Delete the API Gateway REST API.
- Delete the Lambda function.
- Delete the DynamoDB table.
- Delete the custom IAM policy if one was created.
- Delete the Lambda execution role if it is no longer required.

Deleting these resources ensures there are no unnecessary ongoing AWS charges.

---

## Getting Started

#### Prerequisites

- An AWS account
- Permissions to create Lambda, API Gateway, DynamoDB and IAM resources

#### 1. Clone the Repository

```bash
git clone https://github.com/huss-osman/devops-learning.git
cd devops-learning/06-aws/assignments/04-lambda-api-gateway-dynamodb.md
```

#### 2. Follow the Walkthrough

Complete the project by following the deployment steps in this repository.

#### 3. Deploy the Infrastructure

Provision the DynamoDB table, Lambda function, IAM execution role, and API Gateway using the AWS Management Console.

#### 4. Clean Up

Delete the deployed AWS resources when you have finished to avoid unnecessary charges.

---

# Troubleshooting

Some issues encountered during deployment included:

- Missing IAM permissions
- Lambda execution errors
- API Gateway returning HTTP 500 responses
- JSON payload formatting issues
- CORS configuration issues

---

# Why I Built It

I wanted a hands-on understanding of:

- Building serverless applications on AWS
- Integrating API Gateway with AWS Lambda
- Storing data in Amazon DynamoDB
- Applying least-privilege IAM permissions
- Monitoring applications with CloudWatch Logs
- Building production-style serverless architectures

---

# Key Takeaways

- Built a REST API using Amazon API Gateway
- Processed requests with AWS Lambda
- Stored data in Amazon DynamoDB
- Applied least-privilege IAM permissions
- Tested the API using curl
- Verified CloudWatch logs
- Built a serverless AWS application
