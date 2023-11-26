//
//  ArticleListCell.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import SwiftUI
import AVFoundation

struct ArticleListCell: View {
    let article: Article
//    var articleTitle: String
    let tts: AVSpeechSynthesizer
    @State var toggleWeb = false
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
            VStack{
                Text(article.title ?? "")
                HStack{
                    Button(action: {
                        self.toggleWeb.toggle()
                    }, label: {
                        Text("Open article")
                    })
                    .buttonStyle(BorderlessButtonStyle())
                    
                    Spacer()
                    
                    Button(action: {
                        let utterance = AVSpeechUtterance(string: article.title ?? "")
                        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                        
                        tts.speak(utterance)
                        
                    }, label: {
                        Text("Speak")
                    })
                    .buttonStyle(BorderlessButtonStyle())
                }
                .padding()
                .multilineTextAlignment(.center)
                
                
            }
            .sheet(isPresented: $toggleWeb){
                WebView(url: URL(string: article.url!)!)
                    .interactiveDismissDisabled(true)
            }
        }
    }
}

//#Preview {
//    ArticleListCell(article: "Article Title", tts: AVSpeechSynthesizer())
//}
