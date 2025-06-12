//
//  FrameworkDetailView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView ) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com  ")!)
        }
        
//        .sheet(isPresented: $isShowingSafariView ) {
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com  ")!)
//        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
