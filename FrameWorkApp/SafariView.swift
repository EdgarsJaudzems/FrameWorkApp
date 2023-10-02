//
//  SafariView.swift
//  FrameWorkApp
//
//  Created by edgars.jaudzems on 02/10/2023.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
   
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
