//
//  FirstViewController.swift
//  sample1
//
//  Created by Satomi Mori on 2015/07/22.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let textButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        textButton.setTitle("ボタン", forState: UIControlState.Normal)
        textButton.backgroundColor = UIColor.whiteColor()
        textButton.sizeToFit()
        textButton.center = CGPointMake(100, 150)
        
        self.view.addSubview(textButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
