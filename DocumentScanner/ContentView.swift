//
//  ContentView.swift
//  DocumentScanner
//
//  Created by Luis Filipe Pedroso on 08/04/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("showIntroView") private var showIntroView: Bool = false
    
    var body: some View {
        HomeScreen()
           .preferredColorScheme(.light)
           .sheet(isPresented: $showIntroView) {
                IntroScreen()
                    .interactiveDismissDisabled()
            }
            
    }

}

#Preview {
    ContentView()
}
