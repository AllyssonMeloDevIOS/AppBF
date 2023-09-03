//
//  HomeService.swift
//  AppBackFront
//
//  Created by admin on 18/08/23.
//

import UIKit
import Alamofire

protocol HomeServiceDelegate: GenericService {
    func getHomeFromJason(completion: @escaping completion <NFTData?>)
    func getHome(completion: @escaping completion <NFTData?>)
}

class HomeService: HomeServiceDelegate {
    func getHome(completion: @escaping completion<NFTData?>) {
        let url: String = "https://run.mocky.io/v3/9017b378-45e7-4e41-a6d1-dd9eee60b143"
        
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of:NFTData.self) { response in
            debugPrint(response)
            
            switch response.result {
            case .success(let success):
                print("SUCCESS -> \(#function)")
            case .failure(let error):
                print("ERROR -> \(#function)")
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
     
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
