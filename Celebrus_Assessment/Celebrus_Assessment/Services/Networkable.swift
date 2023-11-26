//
//  Networkable.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import Foundation

protocol Networkable {
    func request<T: Decodable>(url: String, modelType: T.Type) async throws -> T
}

