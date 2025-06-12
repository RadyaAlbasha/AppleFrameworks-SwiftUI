//
//  AFButton.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red.gradient)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
