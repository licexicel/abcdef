//
//  Request.swift
//  abc
//
//  Created by James on 2019/12/3.
//  Copyright © 2019 XIE. All rights reserved.
//

import Foundation

class shit_stuff{
    
    let rawTest = ["test_1": "omae wa mou shindeiru", "test_2": "nani?"]
    lazy var Response_dict = Dictionary<String, String>()
    let Url = URL(string: "http://140.115.3.108/api/v1/board")
    
    func Request_start() -> Void {
        
        let jsonTest = try? JSONSerialization.data(withJSONObject: rawTest, options: .fragmentsAllowed)
        
        var request = URLRequest(url: Url!)
        request.httpMethod = "POST"
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonTest
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error == nil, let Data = data{
                do{
                    print("Data: ", Data)
                    let rcv_json = try JSONSerialization.jsonObject(
                        with: Data,
                        options: .allowFragments
                        )as! [String: String]
                    dump(rcv_json)
                    print("(rcv)test_1: ", rcv_json["test_1"] ?? "failed")
                    print("(rcv)test_2: ", rcv_json["test_2"] ?? "failed")
                    self.Response_dict = rcv_json
                    self.print_Response()
                    print("should be success")
                }
                catch{
                    print("receive failed")
                }
            }else{
                print("###error getting###")
            }
        }
        task.resume()
    }
    
    func print_Response() -> Void {
        print("test1: ", self.Response_dict["test_1"] ?? "failed")
        print("test2: ", self.Response_dict["test_2"] ?? "failed")
    }
    
    func get_Response() -> Dictionary<String, String> {
        return self.Response_dict
    }
    
    
}
