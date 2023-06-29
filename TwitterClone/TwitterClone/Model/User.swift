//
//  User.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 29.06.2023.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}

