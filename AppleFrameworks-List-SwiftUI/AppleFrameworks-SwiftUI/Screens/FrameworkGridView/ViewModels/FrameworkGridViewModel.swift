//
//  FrameworkGridViewModel.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
