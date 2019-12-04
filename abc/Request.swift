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
    
    let Url = URL(string: "http://140.115.3.108/api/v1/board")
    
    lazy var jsonTest = try? JSONSerialization.data(withJSONObject: rawTest, options: .fragmentsAllowed)
    
    func Request_start() -> Void {
        <#function body#>
    }
    
    
    
    
    
}
