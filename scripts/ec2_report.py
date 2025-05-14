import boto3

ec2 = boto3.client('ec2')

def listar_instancias():
    response = ec2.describe_instances()
    for r in response['Reservations']:
        for i in r['Instances']:
            print(f"ID: {i['InstanceId']}, Estado: {i['State']['Name']}")

if __name__ == "__main__":
    listar_instancias()

