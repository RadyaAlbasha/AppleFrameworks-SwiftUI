//
//  FrameworkGridView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 11/06/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                        isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label)) // to change the back button Text color
        
        
    }
}

#Preview {
    FrameworkGridView()
}

 
