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
        /* オリジナルnavigationBar作成 */
        // navigationBar生成
        let navigation = UIView(frame: CGRectMake(0, 0, 400, 100))
        navigation.backgroundColor = UIColor.whiteColor()
        
        // UIImageViewを作成してnavigationBarに画像を追加
        let navigationImage = UIImageView(frame: CGRectMake(0,0,100,80))
        navigationImage.image = UIImage(named: "panda.png")
        navigationImage.layer.position = CGPoint(x: 50, y: 60)
        navigation.addSubview(navigationImage)
        
        // backボタンを生成（画像）
        let backButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        backButton.setImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton.frame = CGRectMake(280, 25, 80, 75)
        // クリック時のアクションを指定
        backButton.addTarget(self, action: "backView:", forControlEvents: UIControlEvents.TouchUpInside)
        // navigationBarに追加
        navigation.addSubview(backButton)

        self.navigationController?.view.addSubview(navigation)
        
        /* 次の画面への遷移 */
        let nextViewButton = UIButton(frame: CGRectMake(0, 0, 100, 100))
        nextViewButton.setTitle("次の画面へ", forState: UIControlState.Normal)
        nextViewButton.backgroundColor = UIColor.blackColor()
        nextViewButton.addTarget(self, action: "moveToNextView:", forControlEvents: UIControlEvents.TouchUpInside)
        nextViewButton.center = self.view.center
        self.view.addSubview(nextViewButton)
    }
    
    // back button
    func backView(sender: UIButton) {
        println("clicked back button")
        // 前の画面に戻る
        self.navigationController?.popViewControllerAnimated(true)
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
