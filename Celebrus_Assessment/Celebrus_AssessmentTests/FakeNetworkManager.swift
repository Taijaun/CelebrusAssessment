//
//  FakeNetworkManager.swift
//  Celebrus_AssessmentTests
//
//  Created by Tai Pitt on 26/11/2023.
//

import Foundation
@testable import Celebrus_Assessment

class FakeNetworkManager: Networkable{
    func request<T>(url: String, modelType: T.Type) async throws -> T where T : Decodable {
        if url.isEmpty {throw NetworkingError.invalidURL}
        return Responses.mockResponses as! T
    }
    
    func getData(url: URL) async throws -> Data {
            let bundle = Bundle(for: FakeNetworkManager.self)
            
            guard let path = bundle.url(forResource: url.absoluteString, withExtension: "json") else {throw NetworkingError.invalidURL}
            
            do {
                let data = try Data(contentsOf: path)
                return data
            } catch {
                throw NetworkingError.dataNotFound
            }
        }
    
    
}
