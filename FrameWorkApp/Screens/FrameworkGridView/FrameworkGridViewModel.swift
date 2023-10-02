//
//  FrameworkGridViewModel.swift
//  FrameWorkApp
//
//  Created by edgars.jaudzems on 02/10/2023.
//

import SwiftUI

// ViewModel
final class FramworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    // To broadcast - Published
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
 
