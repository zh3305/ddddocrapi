# ddddocrapi
ddddocr Docker Api 接口
直接使用:
```
docker push zh3305/ddddocrapi
docker run -p 8089:8089 --name ddddocrserver zh3305/ddddocrapi
```

接口调用
```
curl --location --request POST 'http://127.0.0.1:8089/ocr' \
--form 'image=@"/C:/ver.jpeg"'
```

```
import requests

api_url = "http://127.0.0.1:8089/ocr"

file = open('ver.jpeg', 'rb').read()

res = requests.post(api_url, files={'image': file})
print(res.text)

```
