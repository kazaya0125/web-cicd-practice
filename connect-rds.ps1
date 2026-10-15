$Region = "ap-northeast-1"
$InstanceId = "i-007cd65c8c03313aa"
$RdsEndpoint = "web-cicd-db.cdg0iegkyfrh.ap-northeast-1.rds.amazonaws.com"

aws ssm start-session `
  --target $InstanceId `
  --document-name AWS-StartPortForwardingSessionToRemoteHost `
  --parameters "host=$RdsEndpoint,portNumber=3306,localPortNumber=13306" `
  --region $Region