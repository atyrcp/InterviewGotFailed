//
//  JSON.swift
//  interview
//
//  Created by alien on 2019/5/30.
//  Copyright © 2019 Playsport Inc. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: Int
    var name: String?
    var sex: String?
    var age: Int?
    var avatar: String?
    var description: String?
}
