//
//  GenericService.swift
//  AppBackFront
//
//  Created by admin on 18/08/23.
//

import Foundation
import Alamofire

enum Error: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
    case errorRequest(AFError)
}

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}
