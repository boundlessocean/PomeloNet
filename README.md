# NetWorking
A RXSwift&amp;Moya&amp;HandyJSON Networking Tool.

use

```
pod 'Pomelo'

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
