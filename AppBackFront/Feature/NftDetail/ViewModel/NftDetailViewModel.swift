//
//  NftDetailViewModel.swift
//  AppBackFront
//
//  Created by admin on 06/11/23.
//

import UIKit

class NftDetailViewModel {

    let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    public var numberOfRowsInSection: Int {
        return 1
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
}
