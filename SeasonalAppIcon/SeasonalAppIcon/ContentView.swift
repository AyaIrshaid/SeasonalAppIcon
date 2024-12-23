//
//  ContentView.swift
//  SeasonalAppIcon
//
//  Created by Aya Irshaid on 11/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                SeasonalAppIcon.changeAppIcon(appIcon: .winter)
            } label: {
                Text("Winter")
            }
            .padding()
            Button {
                SeasonalAppIcon.changeAppIcon(appIcon: .autumn)
            } label: {
                Text("Autumn")
            }
            .padding()
            Button {
                SeasonalAppIcon.changeAppIcon(appIcon: .summer)
            } label: {
                Text("Summer")
            }
            .padding()
            Button {
                SeasonalAppIcon.changeAppIcon(appIcon: .spring)
            } label: {
                Text("Spring")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
