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
}

#Preview {
    IntroScreen()
}
