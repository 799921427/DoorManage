//
//  PropertyViewController.swift
//  DoManage
//
//  Created by 郑凯 on 2018/3/31.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class PropertyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTitle("", titleImage: "", backImage:"nav", rightImgae: "")
        self.tabBarItem.selectedImage = UIImage(named: "tab3")?.withRenderingMode(.alwaysOriginal)
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
