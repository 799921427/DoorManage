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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTitle("i家", titleImage: "", backImage:"nav", rightImgae: "search")
        
        let nib2 = UINib(nibName:"MyTableViewCell2",bundle:nil);
        self.myTableView.register(nib2, forCellReuseIdentifier: "Cell2")
        self.myTableView.separatorStyle = .none
        self.myTableView.separatorColor = .clear
        
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
       
        
       
            let cell2 : MyTableViewCell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! MyTableViewCell2
            print("mmp2")
            return cell2
        
        
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
