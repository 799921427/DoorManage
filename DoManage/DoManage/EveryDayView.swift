//
//  EveryDayView.swift
//  DoorManage
//
//  Created by 张德茂 on 2018/3/14.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class EveryDayView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var connectTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTitle("i家", titleImage: "", backImage:"nav", rightImgae: "")
        let nib1 = UINib(nibName:"MyTableViewCell1",bundle:nil);
        self.connectTableView.register(nib1, forCellReuseIdentifier: "Cell1")
        self.connectTableView.separatorStyle = .none
        self.connectTableView.separatorColor = .clear
        self.connectTableView.tag = 1;
        self.connectTableView.delegate = self;
        self.connectTableView.dataSource = self;
        
        let nib2 = UINib(nibName:"MyTableViewCell2",bundle:nil);
        self.myTableView.register(nib2, forCellReuseIdentifier: "Cell2")
        self.myTableView.separatorStyle = .none
        self.myTableView.separatorColor = .clear
        self.myTableView.tag = 0;
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
//        self.myTableView.estimatedRowHeight = 150
//        self.myTableView.rowHeight = UITableViewAutomaticDimension
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
        
        if tableView.tag == 1
        {
            let cell1: MyTableViewCell1
            cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! MyTableViewCell1
            
            print("mmp1")
            return cell1
        }
        else
        {
            let cell2: MyTableViewCell2
            cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! MyTableViewCell2
//            cell2.confirm.addTarget(self, action: #selector(confirmUser), for: <#T##UIControlEvents#>)
            return cell2
            print("mmp2")
        }
        
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
