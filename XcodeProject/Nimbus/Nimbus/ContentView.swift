//
//  ContentView.swift
//  Nimbus
//
//  Created by Sedef Bozkurt on 4.12.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("API KEY: \(Bundle.main.infoDictionary?["API_KEY"] as? String ?? "none")")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
