//
//  ZDMInterfaceConnection.swift
//  DoorManage
//
//  Created by 张德茂 on 2018/3/16.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class ZDMInterfaceConnection: NSObject {
    var session : URLSession = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
  
    func connentNet(method:String,params:[String:String]?,block:@escaping ((_ fail:Int,_ msg:String,_ dictionary:[String:NSObject]? )->Void)){
    
        var urlString = "http://119.29.182.124:8080"+method
        var content = ""
        var index = 0;
        var fail : Int = 1
        var dataMsg :String = ""
        if let param = params
        {
            for (key,value) in param{
                print("key:\(key)\nvalue:\(value)")
                if index == 0{
                    content += key + "=" + value
                    index = 1
                }
                else{
                    content += "&" + key + "=" + value
                }
            }
        }
        
        if let url = URL(string:urlString)
        {
            var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            var requestJson : Data? = nil
            do{
                requestJson = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted) as Data
            }catch{
                
            }
            request.httpBody = requestJson as! Data
            request.httpMethod = "POST"
            
            var dict:[String:NSObject]?;
            var task = session.dataTask(with: request as URLRequest, completionHandler: {
                (data,response,error) in
                //print(data)
                if let error1 = error
                {
                    print(error1.localizedDescription)
                    dataMsg = error1.localizedDescription
                    
                    fail = 1
                }
                else
                {
                    
                    print("访问成功，获取数据如下")
                    
                    //if let dicti = try? JSONSerialization.jsonObject(with: data!, options: .mutableContainers)  {
                     //   print(dicti)
                    let dicti = String.init(data: data!, encoding: .utf8)
                        print("backMsg:\(dicti)")
                    if(dicti == "NO")
                    {
                        fail = 1
                        print(fail)
                    }//print(dict)
                    else
                    {
                        fail = 0
                        print(fail)
                    }
                    
                }
            
                
                block(fail,dataMsg,dict)
                

           
                })
            task.resume()
        }
        
        
    }
//    var session:URLSession{
//        get{
//            return URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue())
//        }
//    }
}
