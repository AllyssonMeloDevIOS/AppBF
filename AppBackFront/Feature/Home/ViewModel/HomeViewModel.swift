//
//  HomeViewModel.swift
//  AppBackFront
//
//  Created by admin on 18/08/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func success()
    func error()
}


class HomeViewModel {
    
    private let service: HomeService = HomeService()
    private var nftData: NFTData?
    weak private var delegate: HomeViewModelDelegate?
    
    public func delegate(delegate: HomeViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchRequest(_ typeFetch: TypeFetch) {
        switch typeFetch{
        case .mock:
            service.getHomeFromJason { result, failure in
                if let result {
                    print("Sucess")
                    self.nftData = result
                    self.delegate?.success()
                } else {
                    print(failure as Any)
                    self.delegate?.error()
                }
            }
        case .request:
            service.getHome { result, failure in
                if let result {
                    print("Sucess")
                    self.nftData = result
                    self.delegate?.success()
                } else {
                    print(failure as Any)
                    self.delegate?.error()
                }
            }
            
        }
    }
}
