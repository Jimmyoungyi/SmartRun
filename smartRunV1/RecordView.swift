//
//  RecordView.swift
//  smartRunV1
//
//  Created by yangjianyi on 16/4/13.
//  Copyright © 2016年 yangjianyi. All rights reserved.
//

import UIKit

class RecordView: UIViewController {
    
    @IBOutlet weak var map: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://jimmyoungyi.com/GDS/RW/howToRun.html");
        let requestObj = NSURLRequest(URL: url!);
        map.loadRequest(requestObj);
    }
    @IBOutlet weak var detailview: UIView!
    
    @IBOutlet weak var detailheight: NSLayoutConstraint!
    @IBAction func showmroe(sender: UIButton) {
        self.detailheight.constant = 600
        UIView.animateWithDuration(0.5) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }

}
