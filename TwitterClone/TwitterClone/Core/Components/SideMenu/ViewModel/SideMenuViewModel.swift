//
//  SideMenuViewModel.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 01.06.2023.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Logout"
        case .lists: return "Lists"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        case .lists: return "list.bullet"
        }
    }
}
