//
//  ViewControllerTabChild1.swift
//  sample1
//
//  Created by Satomi Mori on 2015/07/22.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class ViewControllerTabChild1: UIViewController {
    
    var addBtn: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "FirstChild"
        // デフォルトのナビゲーションは非表示
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        // ナビゲーションバー
        let navigation = UIView(frame: CGRectMake(0, 0, 400, 100))
        navigation.backgroundColor = UIColor.whiteColor()
        // 戻るボタン
        let backButton = UIButton(frame: CGRectMake(300, 20, 50, 30))
        backButton.backgroundColor = UIColor.blackColor()
        backButton.setTitle("戻る", forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backView:", forControlEvents: UIControlEvents.TouchUpInside)
        navigation.addSubview(backButton)

        self.navigationController?.view.addSubview(navigation)
        
        let nextViewButton = UIButton(frame: CGRectMake(0, 0, 100, 100))
        nextViewButton.setTitle("次の画面へ", forState: UIControlState.Normal)
        nextViewButton.backgroundColor = UIColor.blackColor()
        nextViewButton.addTarget(self, action: "push:", forControlEvents: UIControlEvents.TouchUpInside)
        nextViewButton.center = self.view.center
        self.view.addSubview(nextViewButton)
    }
    
    // back button
    func backView(sender: UIButton) {
        println("clicked return button")
        // 前の画面に戻る
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // next view button
    func push(sender: UIButton) {
        println("clicked next button")
        // 次の画面へ遷移
        let nextView = SecondViewController()
        self.navigationController?.pushViewController(nextView, animated: true)
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
