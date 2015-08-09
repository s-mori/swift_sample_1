//
//  ViewControllerTabChild1.swift
//  sample1
//
//  Created by Satomi Mori on 2015/07/22.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class ViewControllerTabChild1: UIViewController {
    let nextViewButton = UIButton(frame: CGRectMake(0, 0, 100, 100))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "FirstChild"
        
        /* 次の画面への遷移 */
        nextViewButton.setTitle("次の画面へ", forState: UIControlState.Normal)
        nextViewButton.backgroundColor = UIColor.blackColor()
        nextViewButton.addTarget(self, action: "moveToNextView:", forControlEvents: UIControlEvents.TouchUpInside)
        nextViewButton.center = self.view.center
        self.view.addSubview(nextViewButton)
    }
    
    // next button
    func moveToNextView(sender: UIButton) {
        println("clicked next button")
        // 次の画面へ遷移
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
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
