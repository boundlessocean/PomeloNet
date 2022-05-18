//
//  ViewController.swift
//  NetworkApi
//
//  Created by 付海洋 on 2022/5/16.
//

import UIKit
import Pomelo
import HandyJSON
import RxSwift
struct Model :HandyJSON{
    var json: Home?
}

struct Home :HandyJSON {
    var time:String?
    var value:String?
}

class ViewController: UIViewController {
    let bag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Api.requestObject(PracticeAPI.homePage, type: Model.self).subscribe(onSuccess: { home in
            print(home)
        }).disposed(by: bag)
    }


}

