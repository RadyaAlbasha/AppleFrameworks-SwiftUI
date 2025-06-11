//
//  FrameworkGridViewModel.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
}
