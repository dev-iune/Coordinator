//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import Foundation

class CoordinatorStorage
{
    private var list: [ParentCoordinatorType]
    
    init()
    {
        self.list = [ParentCoordinatorType]()
    }
}

// MARK: - CoordinatorStoreType
extension CoordinatorStorage: CoordinatorStorageType
{
    func store(_ presentable: ParentCoordinatorType)
    {
        self.list.append(presentable)
    }
    
    func release(coordinatorWithId id: UUID)
    {
        let coordinatorsWithId = self.list.filter({ $0.id == id })
        
        coordinatorsWithId.forEach({ parent in
            parent.coordinatorStorage.clear()
        })
        
        self.list.removeAll(where: { $0.id == id })
    }
    
    func clear()
    {
        self.list.forEach({ parent in
            parent.coordinatorStorage.clear()
        })
        
        self.list.removeAll()
    }
}
