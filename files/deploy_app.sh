#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>세미콜론 월드에 오신 것을 환영합니다!</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: #f5f5f5;
      margin: 0;
    }

    .container {
      background-color: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    img {
      max-width: 100%;
      height: auto;
      border-radius: 10px;
      margin-bottom: 20px;
    }

    h1 {
      color: #333;
    }

    p {
      font-size: 1.2em;
      line-height: 1.6;
      color: #555;
    }
  </style>
</head>
<body>
  <div class="container">
    <img src="https://semicolon-image.s3.ap-northeast-2.amazonaws.com/KakaoTalk_20240524_145144624_03.jpg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLWVhc3QtMSJHMEUCIQCRf1m4eziDG%2FP3igfvzrkvtInc5i1ZAYBI52uG57QKNwIgdnK2Va4FrmUV0mo1E71KdS%2BgHko%2FgxScAiBzpdSQefgqhAMIh%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5ODE4ODM3NzI5OTMiDBagY2%2F2TzoJhcYxZirYAgDIX5IiZU7cHHSu58h63NRWlRXSZTkAx1OstwTePx8eG7DXTZeW9aRFdmzgUrUyS1PXyC9VpHrsmZpnwPMJ1lO6TY3GZxyCFkcQHUM093ht4zplTpbX6359KbA9ZKTK4lBwUL%2BUsSIMWXfIufXpuSvKqiLwVUqEke6mOw9g%2FIBFyGNIOQLBJbfTvi%2FaTctpvLZOSCrpSjhkZxWBcshAaU4fUjo1hpdFGYikRM2wPYLm%2FisSXvbcS5masiGmsOkNuhZJJudpIp4%2BrNCpXIhB0KNB3LpBl04qae%2Fkhw%2B1xq2bMky1h7rrEEng%2BMCokEUuFx%2BM%2FmO2CQjd6qfbYxYNX4cpQbaoOBE8Y93QEy3johJUbzKpq9oT7u61wfiNaTXuIaM%2FlPkXANnhtMOGUddAHpiSdOzCK%2BEnQ4qC3%2FY52BsHuB0z6UUF5cj5q8RO%2Bu3PjIYbC4DcUn%2BDMILPwLIGOrMCKV%2BqYjeXZ7TQzGlI3jY033ooMRHMG%2BD4jGPtzf8wdo5NVB8kkoEkbK0xKMFnuzndmeu9u0V6nO6u5P8EIWmJUPXfPJqP7knDrDpdoGAKBoZ0sESvhVAgTRLCRt20MftOxIoosTCG7N%2FLk7aM%2FzDo%2BHRLMfwCL5wgMvkEEcB0vDgOJYjM%2BUjWQaJ5kAOkZ%2FE4Ws56cvkWWy8gNmbzif%2BqEv9gkQ%2BJvD8sxTIZ1hMgohoBRSUNBhce46EohJ%2FsuhUgG0Y1X2BAovdpxtmGiYAIHF838JvPrbd2%2BSIU80CYOGgivjiaa1t97%2F5tkO7Pj60Ny0WuD7fk41M16KF%2BXTaq%2BJmhBs5S%2BM8o8tf7sMMgdWFiUpSboGY2itw5V7ZFBK191avIT10gzTPGJe8NiPQYo5Qfxw%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240524T055643Z&X-Amz-SignedHeaders=host&X-Amz-Expires=10800&X-Amz-Credential=ASIA6JHGVMBAS6BLEB6U%2F20240524%2Fap-northeast-2%2Fs3%2Faws4_request&X-Amz-Signature=14d72087f64ff9780834f5a48b1c215544035c512311205d1177a461ae00782c" alt="세미콜론 이미지">
    <h1>세미콜론 월드!</h1>
    <p>${PREFIX}님, 세미콜론 월드에 오신 것을 환영합니다! 👋</p>
    <p>이곳에서 즐거운 시간을 보내세요! 🎉</p>
  </div>
</body>
</html>
EOM

echo "Script complete."
