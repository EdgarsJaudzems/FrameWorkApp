//
//  FrameworkGridView.swift
//  FrameWorkApp
//
//  Created by Edgars Jaudzems on 01/10/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Init viewModel
    @StateObject var viewModel = FramworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            // Listening to viewModel
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                DetailView(
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
