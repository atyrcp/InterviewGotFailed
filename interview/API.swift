//
//  API.swift
//  interview
//
//  Created by 壯兔 on 2018/2/8.
//  Copyright © 2018年 Playsport Inc. All rights reserved.
//


// API url: http://192.168.1.16:8003

// GET /api/user
// 列出所有使用者
import Foundation


class APIservice {
    static let shared = APIservice()
    private init() {}
    
    let endPoint = "http://192.168.1.16:8003/api/user"
    
    func getAPI(completion: @escaping ([User])-> Void) {
        
        print("did fired")
        
        guard let url = URL(string: endPoint) else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, _) in
            
            print("did enter")
            
            if let returnData = data {
                
                print(data)
                do {
                    let decodeModel = try JSONDecoder().decode([User].self, from: data!)
                    
                    print(decodeModel)
                    completion(decodeModel)
                    
                } catch {
                    print("some error")
                }
            }
        }
        task.resume()
        
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

