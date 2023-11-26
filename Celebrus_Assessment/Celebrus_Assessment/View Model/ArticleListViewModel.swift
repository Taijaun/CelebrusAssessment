//
//  ArticleListViewModel.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import Foundation
import SwiftUI

final class ArticleListViewModel: ObservableObject {
    @Published var articlesList = [Article]()
    @State var searchText: String = ""
    @State var showWeb: Bool = false
    
    let networkManager: Networkable
    
    init(networkManager: Networkable) {
        self.networkManager = networkManager
    }
    
    @MainActor func getArticles(url: String) async {
        articlesList = [Article]()
            do {
                let data = try await networkManager.request(url: url, modelType: Responses.self)
                articlesList = data.articles
            } catch {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
}
