//
//  LatestDealTableViewCellViewModel.swift
//  AppBackFront
//
//  Created by admin on 19/11/23.
//

import UIKit

class LatestDealTableViewCellViewModel: NSObject {
    
    var nft: Nft?
    
    public func setNft(nft: Nft) {
        self.nft = nft
    }
    
    public var title: String {
        return nft?.titleLatestDeals ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return nft?.latestDeals?.count ?? 0
    }
    
    public var heigthForRowAt: CGFloat {
        return 70
    }

}
