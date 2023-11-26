//
//  ContentView.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 24/11/2023.
//

import SwiftUI
import AVFoundation

struct ArticleListView: View {
    @StateObject var articleListViewModel = ArticleListViewModel(networkManager: NetworkManager())
    @State var searchText = ""
    @State var showWebView = false
    
    let tts = AVSpeechSynthesizer()
    
    var body: some View {
        NavigationStack {
            //Text(articleListViewModel.status)
            List(articleListViewModel.articlesList){ article in

                ArticleListCell(article: article, tts: tts)
            }
        }.searchable(text: $articleListViewModel.searchText, prompt: "Search for news")
            .onSubmit(of: .search, {
                Task{
                    await articleListViewModel.getArticles(url: Endpoints.newsEndPoint + searchText + Endpoints.apiKeyQuery)
                    print("calling \($searchText)")
                    print(articleListViewModel.articlesList)
                }
            })
            .onAppear{
                Task{
                    await articleListViewModel.getArticles(url: Endpoints.newsEndPoint + "bitcoin" + Endpoints.apiKeyQuery)
                }
            }.refreshable {
                Task{
                    await articleListViewModel.getArticles(url: Endpoints.newsEndPoint + searchText + Endpoints.apiKeyQuery)
                    print("calling \($searchText)")
                    print(articleListViewModel.articlesList)
                }
            }
        //.searchable(text: articleListViewModel.$searchText)

    }
}

//#Preview {
//    ArticleListView(articleListViewModel: ArticleListViewModel(networkManager: NetworkManager()))
//}
