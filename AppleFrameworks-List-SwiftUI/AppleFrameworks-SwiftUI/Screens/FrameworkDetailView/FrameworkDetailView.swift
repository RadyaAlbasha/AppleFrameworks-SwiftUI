//
//  FrameworkDetailView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView: Bool = false
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundStyle(.yellow )
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView ) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com  ")!)
        }
        
//        .fullScreenCover(isPresented: $isShowingSafariView ) {
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
