//
//  ContentView.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 24/11/2023.
//

import SwiftUI

struct ArticleListView: View {
    @StateObject var articleListViewModel: ArticleListViewModel
    
    var body: some View {
        VStack {
            
        }

    }
}

#Preview {
    ArticleListView(articleListViewModel: ArticleListViewModel(networkManager: NetworkManager()))
}
