//
//  ConnectViewController.swift
//  DoManage
//
//  Created by 郑凯 on 2018/3/31.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class ConnectViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var connectTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTitle("通讯录", titleImage: "", backImage:"nav", rightImgae: "")
        self.tabBarItem.selectedImage = UIImage(named: "tab2")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor(red: 243/255.0, green: 154/255.0, blue: 6/255.0, alpha: 1.0)], for: .highlighted)
        let nib1 = UINib(nibName:"MyTableViewCell1",bundle:nil);
        self.connectTableView.register(nib1, forCellReuseIdentifier: "Cell1")
        self.connectTableView.separatorStyle = .none
        self.connectTableView.separatorColor = .clear
        self.connectTableView.delegate = self;
        self.connectTableView.dataSource = self;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      
    
            let cell1: MyTableViewCell1
            cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! MyTableViewCell1
            
            print("mmp1")
            return cell1
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
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
