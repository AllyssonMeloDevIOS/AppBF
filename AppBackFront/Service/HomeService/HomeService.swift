//
//  HomeService.swift
//  AppBackFront
//
//  Created by admin on 18/08/23.
//

import UIKit

protocol HomeServiceDelegate: GenericService {
    func getHomeFromJason(completion: @escaping completion <NFTData?>)
}

class HomeService: HomeServiceDelegate {
     
    func getHomeFromJason(completion: @escaping completion <NFTData?>) {
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let nftData: NFTData = try JSONDecoder().decode(NFTData.self, from: data)
                completion(nftData,nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "HomeData", error))
            }
        } else {
            completion(nil, Error.fileNotFound(name: "HomeData"))
        }
    }
    
    
    
}
