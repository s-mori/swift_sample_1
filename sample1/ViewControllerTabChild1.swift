//
//  ViewControllerTabChild1.swift
//  sample1
//
//  Created by Satomi Mori on 2015/07/22.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class ViewControllerTabChild1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "FirstChild"
        self.view.backgroundColor = UIColor(red: 0.651, green: 0.8471, blue: 0.8392, alpha: 1.0)
        
        /* 次の画面への遷移 */
        let nextViewButton = UIButton(frame: CGRectMake(0, 0, 110, 80))
        let buttonImage = UIImage(named: "next_btn.png")
        nextViewButton.layer.position = CGPoint(x: 250, y: 450)
        nextViewButton.addTarget(self, action: "moveToNextView:", forControlEvents: UIControlEvents.TouchUpInside)
        nextViewButton.setImage(buttonImage, forState: UIControlState.Normal)
        
        let guideImage = UIImageView(frame: CGRectMake(0,0,150,150))
        guideImage.image = UIImage(named: "panda_side.png")
        guideImage.layer.position = CGPoint(x: 300, y: 546)
        self.view.addSubview(guideImage)
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
