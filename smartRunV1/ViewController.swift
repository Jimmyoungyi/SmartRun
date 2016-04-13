//
//  ViewController.swift
//  smartRunV1
//
//  Created by yangjianyi on 16/4/6.
//  Copyright © 2016年 yangjianyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homemap: UIWebView!
    
    override func viewWillAppear(animated: Bool) {
        self.bottomindex.constant = -200
        self.view.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://jimmyoungyi.com/GDS/RW/howToRun.html");
        let requestObj = NSURLRequest(URL: url!);
        homemap.loadRequest(requestObj);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var buttoncontainer: UIView!
    @IBOutlet weak var bottomindex: NSLayoutConstraint!
    
    @IBAction func clickplan(sender: CustomButton) {
        self.bottomindex.constant = 0
        UIView.animateWithDuration(0.5) { () -> Void in
            self.view.layoutIfNeeded()
        }
        
    }


}

