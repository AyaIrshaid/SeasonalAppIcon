//
//  ContentView.swift
//  SeasonalAppIcon
//
//  Created by Aya Irshaid on 11/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 24.0) {
            HStack {
                Image("winter")
                    .frame(width: 40.0, height: 40.0)
                Button {
                    SeasonalAppIcon.changeAppIcon(appIcon: .winter)
                } label: {
                    Text("Winter")
                }
            }
            HStack {
                Image("autumn")
                    .frame(width: 40.0, height: 40.0)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Button {
                    SeasonalAppIcon.changeAppIcon(appIcon: .autumn)
                } label: {
                    Text("Autumn")
                }
            }
            HStack {
                Image("summer")
                    .frame(width: 40.0, height: 40.0)
                Button {
                    SeasonalAppIcon.changeAppIcon(appIcon: .summer)
                } label: {
                    Text("Summer")
                }
            }
            HStack {
                Image("spring")
                    .frame(width: 40.0, height: 40.0)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Button {
                    SeasonalAppIcon.changeAppIcon(appIcon: .spring)
                } label: {
                    Text("Spring")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
