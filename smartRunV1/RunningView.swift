//
//  RunningView.swift
//  smartRunV1
//
//  Created by yangjianyi on 16/4/13.
//  Copyright © 2016年 yangjianyi. All rights reserved.
//

import UIKit

class RunningView: UIViewController {

    @IBOutlet weak var map: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://jimmyoungyi.com/GDS/RW/howToRun.html");
        let requestObj = NSURLRequest(URL: url!);
        map.loadRequest(requestObj);
    }
    @IBOutlet weak var completeLab: UILabel!
    @IBOutlet weak var runBtn: CustomButton!
    var complete = 0
    var running = false
    var timer = NSTimer()
    @IBAction func run(sender: UIButton) {
        if running{
            running = false
            runBtn.setTitle("Pause", forState: UIControlState.Normal)
        }else{
            running = true
            runBtn.setTitle("Run", forState: UIControlState.Normal)
        }
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.025, target: self, selector: "timerAction", userInfo: nil, repeats: true)
    }
    func timerAction() {
        if running {
            ++complete
            completeLab.text = "\(complete)%"
        }
        if complete == 100{
            timer.invalidate()
            self.performSegueWithIdentifier("toRecord", sender: nil)
        }
    }
    //MARK: segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
    
}


