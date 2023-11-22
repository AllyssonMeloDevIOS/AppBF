//
//  WalletViewModel.swift
//  AppBackFront
//
//  Created by admin on 22/11/23.
//

import UIKit

class WalletViewModel: NSObject {
    
    private let service: WalletService = WalletService()
    
    public func fetch(_ type: TypeFetch) {
        switch type {
        case .mock:
            service.getWalletFromJason { result, failure in
                if let result {
                    print(result)
//                    self.nftData = result
//                    self.delegate?.success()
                } else {
                    print(failure as Any)
//                    self.delegate?.error()
                }
            }
        case .request:
            service.getWallet { result, failure in
                if let result {
                    print(result)
//                    self.nftData = result
//                    self.delegate?.success()
                } else {
                    print(failure as Any)
//                    self.delegate?.error()
                }
            }

        }
    }

}

