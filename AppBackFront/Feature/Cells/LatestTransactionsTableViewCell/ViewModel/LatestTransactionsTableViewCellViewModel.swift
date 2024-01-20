//
//  LatestTransactionsTableViewCellViewModel.swift
//  AppBackFront
//
//  Created by admin on 08/12/23.
//

import UIKit

enum HeightLatestTransactions: CGFloat {
    case height = 70
}

class LatestTransactionsTableViewCellViewModel: NSObject {
    
    var data: LatestTransactionsCell?
    
    public func setLatestTransactions(data: LatestTransactionsCell) {
        self.data = data
    }
    
    public var title: String {
        return data?.latestTransactionsTitle ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return data?.listOfTransactions?.count ?? 0
    }
    
    public var heigthForRowAt: CGFloat {
        return HeightLatestTransactions.height.rawValue
    }
    
    public func loadCurrentLatestDeal(indexPath: IndexPath) -> ListOfTransaction {
        return data?.listOfTransactions?[indexPath.row] ?? ListOfTransaction()
    }
    
    public func isInicial(indexPath: IndexPath) -> Bool {
        return indexPath.row == 0
    }

    public func isFinal(indexPath: IndexPath) -> Bool {
        return indexPath.row == numberOfRowsInSection - 1
    }
}
