//
//  Request.swift
//  abc
//
//  Created by James on 2019/12/3.
//  Copyright © 2019 XIE. All rights reserved.
//

import Foundation

class shit_stuff{
    
    /*
    let rawTest = ["test_1": "omae wa mou shindeiru", "test_2": "nani?", "test_3": "black?", "test_4": "dick"]
    lazy var Response_dict = Dictionary<String, String>()
    
    let rawTest = [["test_1": "omae wa mou shindeiru", "test_2": "nani?"], ["test_1": "black", "test_2": "dick"]]
    lazy var Response_dict = [Dictionary<String, String>]()
    */
    
    let rawTest = [
        ["title": "omae wa", "author": "black", "date": "2019/12/4", "content": "幹林涼"],
        ["title": "mou shindeiru", "author": "dick", "date": "2019/12/4", "content": "老雞掰"]
    ]
    lazy var Response_dict = [Dictionary<String, String>]()
    
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
                        )as! [[String: String]]
                    self.Response_dict = rcv_json
                    self.print_Response()
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
        for index in 0...1{
            print("index: ", index)
            print("title: ", self.Response_dict[index]["title"] ?? "failed")
            print("author: ", self.Response_dict[index]["author"] ?? "failed")
            print("date: ", self.Response_dict[index]["date"] ?? "failed")
            print("content: ", self.Response_dict[index]["content"] ?? "failed")
        }
    }
    
    func get_Response() -> [Dictionary<String, String>] {
        return self.Response_dict
    }
    
    
}
