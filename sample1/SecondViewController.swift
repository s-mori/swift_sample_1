//
//  SecondViewController.swift
//  sample1
//
//  Created by Satomi Mori on 2015/07/26.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 背景色 #a6d8d6
        self.view.backgroundColor = UIColor(red: 0.651, green: 0.8471, blue: 0.8392, alpha: 1.0)
        let pandaImage = UIImageView(frame: CGRectMake(0,0,150,150))
        pandaImage.image = UIImage(named: "panda_sleep.png")
        pandaImage.layer.position = CGPoint(x: 300, y: 546)
        self.view.addSubview(pandaImage)

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
