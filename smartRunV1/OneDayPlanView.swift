//
//  OneDayPlanView.swift
//  smartRunV1
//
//  Created by yangjianyi on 16/4/13.
//  Copyright © 2016年 yangjianyi. All rights reserved.
//

import UIKit

class OneDayPlanView: UIViewController {
    @IBOutlet weak var map: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://jimmyoungyi.com/GDS/RW/howToRun.html");
        let requestObj = NSURLRequest(URL: url!);
        map.loadRequest(requestObj);
    }
}
