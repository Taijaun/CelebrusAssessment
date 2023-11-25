//
//  Celebrus_AssessmentApp.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 24/11/2023.
//

import SwiftUI

@main
struct Celebrus_AssessmentApp: App {
    var body: some Scene {
        WindowGroup {
            ArticleListView(articleListViewModel: ArticleListViewModel(networkManager: NetworkManager()))
        }
    }
}
