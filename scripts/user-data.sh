#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <title>Terraform Cloud Project</title>
</head>
<body>
  <h1>Terraform AWS Infrastructure Project</h1>
  <p>EC2 launched successfully with user data.</p>
</body>
</html>
HTML
