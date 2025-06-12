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
        NavigationStack {
            List {
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label)) // to change the back button Text color
    }
}

#Preview {
    FrameworkGridView()
}

 
