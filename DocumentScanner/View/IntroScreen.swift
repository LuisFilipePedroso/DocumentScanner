//
//  IntroScreen.swift
//  DocumentScanner
//
//  Created by Luis Filipe Pedroso on 08/04/25.
//

import SwiftUI

struct IntroScreen: View {
    @AppStorage("showIntroView") private var showIntroView: Bool = true
    
    var body: some View {
        VStack(spacing: 16) {
            Text("What's new in \nDocument Scanner")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 64)
                .padding(.bottom, 32)
            
            Button {
                showIntroView = false
            } label: {
                Text("Start using Document Scanner")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .hSpacing(.center)
                    .frame(height: 56)
                //                    .padding(.vertical, 16)
                    .background(.purple.gradient, in: .capsule)
            }
        }
        .padding(15)
    }
    
    @ViewBuilder
    private func PointView(title: String, image: String, description: String) -> some View {
        HStack(spacing: 16) {
            Image(systemName: image)
                .font(.largeTitle)
                .foregroundStyle(.purple)
            
            VStack(alignment: .leading, spacing: 6) {
               Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.callout)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreen()
}
