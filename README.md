# NetWorking
A RXSwift&amp;Moya&amp;HandyJSON Networking Tool.

use

```
pod 'Pomelo'

```

Header Config
```
public struct HTTPHeaderPlugin: PluginType {

    /**
     Prepare a request by  HTTPHeaders if necessary.

     - parameters:
     - request: The request to modify.
     - target: The target of the request.
     - returns: The modified `URLRequest`.
     */
    public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
    
        var request = request
        request.addValue("Basic VXNlcm5hbWU6UGFzc3dvcmQ=", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpShouldHandleCookies = false
        request.timeoutInterval = 20
    
        return request
    }
}
```




request
```
struct Model :HandyJSON{
    var json: Home?
}

struct Home :HandyJSON {
    var time:String?
    var value:String?
}

Api.requestObject(PracticeAPI.homePage, type: Model.self).subscribe(onSuccess: { home in
    print(home)
}).disposed(by: bag)
```
