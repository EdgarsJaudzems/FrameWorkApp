//
//  DetailView.swift
//  FrameWorkApp
//
//  Created by Edgars Jaudzems on 01/10/2023.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width:44, height: 44)
                }
            }.padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework)
}
