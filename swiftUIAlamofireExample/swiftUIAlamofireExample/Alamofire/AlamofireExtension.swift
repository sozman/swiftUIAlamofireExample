//
//  AlamofireExtension.swift
//  swiftUIAlamofireExample
//
//  Created by Sinan Özman on 8.06.2019.
//  Copyright © 2019 Sinan Özman. All rights reserved.
//

import Foundation
import Alamofire

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, _, data, error in
            guard error == nil else { return .failure(error!) }
            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }
            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }
    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }
    @discardableResult
    func responsePosts(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<[PostModel.Response]>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}


