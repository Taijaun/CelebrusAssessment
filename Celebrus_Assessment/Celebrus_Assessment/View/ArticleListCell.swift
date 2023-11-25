//
//  ArticleListCell.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import SwiftUI

struct ArticleListCell: View {
    var articleTitle: String
    
    var body: some View {
        VStack{
            Text(articleTitle)
        }
    }
}

#Preview {
    ArticleListCell(articleTitle: "Article Title")
}
