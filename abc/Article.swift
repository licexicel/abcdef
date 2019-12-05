//
//  Article.swift
//  abc
//
//  Created by XIE on 2019/12/4.
//  Copyright © 2019 XIE. All rights reserved.
//

import SwiftUI

struct Article: Hashable, Codable, Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var data: String
    var content: String
    
    
}
