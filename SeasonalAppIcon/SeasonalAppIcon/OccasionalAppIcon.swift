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
    
    static func changeAppIconWithoutPopUpMessage(appIcon: Occasions) {
        if UIApplication.shared.responds(to: #selector(getter: UIApplication.shared.supportsAlternateIcons)) && UIApplication.shared.supportsAlternateIcons {
            
            typealias setalternativeIconName = @convention(c) (NSObject, Selector, NSString?, @escaping (NSError) -> ()) -> ()
            
            let selectorString = "_setAlternateIconName:completeionHandler:"
            let currentIcon = UIApplication.shared.alternateIconName
            
            if appIcon.rawValue != currentIcon {
                return
            }
            
            let selecter = NSSelectorFromString(selectorString)
            let imp = UIApplication.shared.method(for: selecter)
            
            let method = unsafeBitCast(imp, to: setalternativeIconName.self)
            method(UIApplication.shared, selecter, (appIcon == .spring ? nil : appIcon.rawValue as NSString), { _ in})
        }
    }
}
