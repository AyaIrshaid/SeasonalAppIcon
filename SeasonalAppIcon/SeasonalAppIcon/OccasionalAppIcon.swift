//
//  OccasionalAppIcon.swift
//  SeasonalAppIcon
//
//  Created by Aya Irshaid on 23/12/2024.
//

import Foundation
import UIKit

enum Occasions: String {
    case spring = "AppIcon"
    case summer = "AppIcon-Summer"
    case autumn = "AppIcon-Autumn"
    case winter = "AppIcon-Winter"
}

struct SeasonalAppIcon {

    static func changeAppIcon(appIcon: Occasions) {
        let currentIcon = UIApplication.shared.alternateIconName
        if appIcon.rawValue != currentIcon {
            UIApplication.shared.setAlternateIconName(appIcon == .spring ? nil : appIcon.rawValue) { iconErorr in
                print("#**error = \(iconErorr?.localizedDescription ?? "")")
            }
        }
    }
}
