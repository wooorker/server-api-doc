# SMARTWORK API DOC

#### Grammer

- “# Group 组名称”: 声明的是一个分组
- “## 接口名称”: 声明一个接口
- “### 接口名称　[http method]”: restful风格,声明不同http method下的接口信息
- “+ Parameters”: 声明请求参数
- “+ Response 200 (application/json)”: 声明响应结果

### How to use?

```
cd ./apib && ./snowboard html -i ./v1/index.apib -o ./v1/index.html -s

open website: localhost:8088
```

```
./snowboard mock -i ./v1/index.apib 

open website: localhost:8087
```
