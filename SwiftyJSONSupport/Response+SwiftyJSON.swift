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
        let json: JSON
        do {
            json = try JSON(data: data, options: [.allowFragments, .mutableContainers, .mutableLeaves])
            HTTPLogger.transform(.verbose, targetType: JSON.self, request: request, extra: json)
        } catch {
            let err = HTTPError.cast(value: data, targetType: JSON.self, request: request, response: response)
            HTTPLogger.failure(.verbose, error: err)
            throw err
        }
        return json
    }
}
