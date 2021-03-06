//
//  MyTabBarViewController.swift
//  DoorManage
//
//  Created by 张德茂 on 2018/3/3.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false   //避免收默认的半透明色影响，关闭
        self.tabBarController?.tabBar.tintColor = UIColor(red: 243/255.0, green: 154/255.0, blue: 6/255.0, alpha: 1.0)
        self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor(red: 243/255.0, green: 154/255.0, blue: 6/255.0, alpha: 1.0)], for: .highlighted)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
