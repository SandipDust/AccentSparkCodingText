//
//  NetworkManager.swift
//  AccentSparkInterview
//
//  Created by Sandip Das on 29/10/21.
//

import Foundation
import Alamofire


class NetworkManager{
    
    func sendRequest(tableView: UITableView){
        let endURL = "https://smileelive.webappfactory.co/api/demo-data"
        
        AF.request(endURL, method: .get).validate()
            .responseData { response in
                switch response.result{
                case .success(let data):
                    
                    let decoder = JSONDecoder()
                    do{
                        let info = try decoder.decode(UserData.self
                                                      , from: data)
                        let totalUsers = info.data.count
                        
                        
                        for i in 0..<totalUsers{
                            let firstName = info.data[i].first_name
                            let lastName = info.data[i].last_name
                            let userName = info.data[i].user_name
                            let profilePic = info.data[i].profile_picture
                                let followers = info.data[i].total_followers
                                
                            let userDetails = UserModel(userImageName: profilePic, username: "@\(userName)", name: "\(firstName) \(lastName)", followersCount: String(followers), vipLabel: "vip.png")
                                userDataArray.append(userDetails)
                        }
                        
                        tableView.reloadData()
                        
                    }catch{
                        print(error)
                    }
                
                
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}
