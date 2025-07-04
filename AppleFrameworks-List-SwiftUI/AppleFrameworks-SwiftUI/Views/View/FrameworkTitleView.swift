//
//  FrameworkTitleView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
