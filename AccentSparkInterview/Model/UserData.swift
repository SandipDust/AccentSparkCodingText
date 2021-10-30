//
//  UserData.swift
//  AccentSparkInterview
//
//  Created by Sandip Das on 29/10/21.
//
// Structure used to decode JSON from API

import Foundation


struct UserData: Codable{
    let success: Bool
    let data: [Data]
}

struct Data: Codable{
    let id: Int
    let email: String
    let profile_picture: String
    let first_name: String
    let last_name: String
    let user_name: String
    let total_followers: Int
}
