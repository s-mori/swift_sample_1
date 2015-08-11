//
//  NavigationController.swift
//  sample1
//
//  Created by Satomi Mori on 2015/08/09.
//  Copyright (c) 2015年 Satomi Mori. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController, UINavigationControllerDelegate {
    let navigation = UIView(frame: CGRectMake(0, 0, 400, 100))
    var backButton:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // デフォルトのナビゲーションは非表示
        self.setNavigationBarHidden(true, animated: false)
        
        navigation.backgroundColor = UIColor.whiteColor()
        
        // UIImageViewを作成してnavigationBarに画像を追加
        let navigationImage = UIImageView(frame: CGRectMake(0,0,100,80))
        navigationImage.image = UIImage(named: "panda.png")
        navigationImage.layer.position = CGPoint(x: 50, y: 60)
        navigation.addSubview(navigationImage)
        self.view.addSubview(navigation)
        
        /* backボタン作成 */
        backButton = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        backButton?.setImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton?.frame = CGRectMake(280, 25, 80, 75)
        // クリック時のアクションを指定
        backButton?.addTarget(self, action: "backView:", forControlEvents: UIControlEvents.TouchUpInside)
        // navigationBarに追加
        navigation.addSubview(backButton!)
        
        self.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // back button
    func backView(sender: UIButton) {
        println("clicked back button")
        // 前の画面に戻る
        self.popViewControllerAnimated(true)
    }
    
    // back buttonの表示/非表示
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count <= 1){
            backButton?.alpha = 0
        } else {
            backButton?.alpha = 1
        }
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
