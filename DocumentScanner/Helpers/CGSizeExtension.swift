//
//  CGSizeExtension.swift
//  DocumentScanner
//
//  Created by Luis Filipe Pedroso on 12/04/25.
//

import SwiftUI

extension CGSize {
    func aspectFit(_ to: CGSize) -> CGSize {
        let scaleX = to.width / self.width
        let scaleY = to.height / self.height
        
        let aspectRatio = min(scaleX, scaleY)
        return .init(width: aspectRatio * width, height: aspectRatio * height)
    }
}
