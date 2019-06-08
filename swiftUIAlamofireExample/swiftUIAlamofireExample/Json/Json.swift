//
//  Json.swift
//  swiftUIAlamofireExample
//
//  Created by Sinan Özman on 8.06.2019.
//  Copyright © 2019 Sinan Özman. All rights reserved.
//

import Foundation

// MARK: - Public Json Methods.
/// Json Decoder
///
/// - Returns: Json Decoder
func newJSONDecoder() -> JSONDecoder {
    /// Decoder
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}
/// Json Encoder
///
/// - Returns: JSON Encoder
func newJSONEncoder() -> JSONEncoder {
    /// encoder
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
