//
//  ScannerView.swift
//  DocumentScanner
//
//  Created by Luis Filipe Pedroso on 12/04/25.
//

import SwiftUI
import VisionKit

struct ScannerView: UIViewControllerRepresentable {
   var didFinishWithError: (Error) -> Void
    var didCancel: () -> ()
    var didFinish: (VNDocumentCameraScan) -> ()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> some VNDocumentCameraViewController {
        let controller = VNDocumentCameraViewController()
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    class Coordinator : NSObject, VNDocumentCameraViewControllerDelegate {
        var parent: ScannerView
        init(parent: ScannerView) {
            self.parent = parent
        }
        
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            parent.didFinish(scan)
        }
        
        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            parent.didCancel()
        }
        
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
            parent.didFinishWithError(error)
        }
    }
}
