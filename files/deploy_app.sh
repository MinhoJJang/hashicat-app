#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><img src="https://semicolon-image.s3.ap-northeast-2.amazonaws.com/%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.jpg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLWVhc3QtMSJHMEUCIQCRf1m4eziDG%2FP3igfvzrkvtInc5i1ZAYBI52uG57QKNwIgdnK2Va4FrmUV0mo1E71KdS%2BgHko%2FgxScAiBzpdSQefgqhAMIh%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5ODE4ODM3NzI5OTMiDBagY2%2F2TzoJhcYxZirYAgDIX5IiZU7cHHSu58h63NRWlRXSZTkAx1OstwTePx8eG7DXTZeW9aRFdmzgUrUyS1PXyC9VpHrsmZpnwPMJ1lO6TY3GZxyCFkcQHUM093ht4zplTpbX6359KbA9ZKTK4lBwUL%2BUsSIMWXfIufXpuSvKqiLwVUqEke6mOw9g%2FIBFyGNIOQLBJbfTvi%2FaTctpvLZOSCrpSjhkZxWBcshAaU4fUjo1hpdFGYikRM2wPYLm%2FisSXvbcS5masiGmsOkNuhZJJudpIp4%2BrNCpXIhB0KNB3LpBl04qae%2Fkhw%2B1xq2bMky1h7rrEEng%2BMCokEUuFx%2BM%2FmO2CQjd6qfbYxYNX4cpQbaoOBE8Y93QEy3johJUbzKpq9oT7u61wfiNaTXuIaM%2FlPkXANnhtMOGUddAHpiSdOzCK%2BEnQ4qC3%2FY52BsHuB0z6UUF5cj5q8RO%2Bu3PjIYbC4DcUn%2BDMILPwLIGOrMCKV%2BqYjeXZ7TQzGlI3jY033ooMRHMG%2BD4jGPtzf8wdo5NVB8kkoEkbK0xKMFnuzndmeu9u0V6nO6u5P8EIWmJUPXfPJqP7knDrDpdoGAKBoZ0sESvhVAgTRLCRt20MftOxIoosTCG7N%2FLk7aM%2FzDo%2BHRLMfwCL5wgMvkEEcB0vDgOJYjM%2BUjWQaJ5kAOkZ%2FE4Ws56cvkWWy8gNmbzif%2BqEv9gkQ%2BJvD8sxTIZ1hMgohoBRSUNBhce46EohJ%2FsuhUgG0Y1X2BAovdpxtmGiYAIHF838JvPrbd2%2BSIU80CYOGgivjiaa1t97%2F5tkO7Pj60Ny0WuD7fk41M16KF%2BXTaq%2BJmhBs5S%2BM8o8tf7sMMgdWFiUpSboGY2itw5V7ZFBK191avIT10gzTPGJe8NiPQYo5Qfxw%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240524T054146Z&X-Amz-SignedHeaders=host&X-Amz-Expires=14400&X-Amz-Credential=ASIA6JHGVMBAS6BLEB6U%2F20240524%2Fap-northeast-2%2Fs3%2Faws4_request&X-Amz-Signature=216447acd7cf1bc83738802b0c03d3ccacddd92d628b4b95850e2126e6d93a10"></img></center>
  <center><h2>Semicolon World!</h2></center>
  Welcome to ${PREFIX}'s app. Replace this text with your own.
  It's mine!!! 
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
