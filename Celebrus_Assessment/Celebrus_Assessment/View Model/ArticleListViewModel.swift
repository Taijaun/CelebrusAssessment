//
//  ArticleListViewModel.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import Foundation

final class ArticleListViewModel: ObservableObject {
    var articleList = [articles]()
    let networkManager: Networkable
    
    init(networkManager: Networkable) {
        self.networkManager = networkManager
    }
    
    @MainActor func getArticles(url: String) async {
        do {
            articleList = try await networkManager.request(url: url, modelType: [articles].self)
        } catch {
            
        }
    }
}
