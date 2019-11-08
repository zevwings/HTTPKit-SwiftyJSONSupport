//
//  Response+SwiftyJSON.swift
//  HTTPKit
//
//  Created by 张伟 on 2019/9/12.
//  Copyright © 2019 zevwings. All rights reserved.
//

import Foundation
import SwiftyJSON
import HTTPKit

public extension Response {

    func mapJSONObject() throws -> JSON {
        return try JSON(data: data, options: [.allowFragments, .mutableContainers, .mutableLeaves])
    }
}
