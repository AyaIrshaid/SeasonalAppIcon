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
                    .frame(width: 60.0, height: 60.0)
                Text("Winter")
                    .foregroundStyle(.cyan)
                    .fontWeight(.bold)
            }
            .onTapGesture {
                SeasonalAppIcon.changeAppIcon(appIcon: .winter)
            }
            HStack {
                Image("spring")
                    .frame(width: 60.0, height: 60.0)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Spring")
                    .foregroundStyle(.pink)
                    .fontWeight(.bold)
            }
            .onTapGesture {
                SeasonalAppIcon.changeAppIcon(appIcon: .spring)
            }
            HStack {
                Image("summer")
                    .frame(width: 60.0, height: 60.0)
                Text("Summer")
                    .foregroundStyle(.green)
                    .fontWeight(.bold)
            }
            .onTapGesture {
                SeasonalAppIcon.changeAppIcon(appIcon: .summer)
            }
            HStack {
                Image("autumn")
                    .frame(width: 60.0, height: 60.0)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Autumn")
                    .foregroundStyle(.orange)
                    .fontWeight(.bold)
            }
            .onTapGesture {
                SeasonalAppIcon.changeAppIcon(appIcon: .autumn)
            }
        }
    }
}

#Preview {
    ContentView()
}
