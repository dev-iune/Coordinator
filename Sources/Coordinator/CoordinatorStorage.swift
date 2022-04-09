//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import Foundation

public class CoordinatorStorage
{
    private var list: [ParentCoordinatorType]
    
    public init()
    {
        self.list = [ParentCoordinatorType]()
    }
}

// MARK: - CoordinatorStoreType
extension CoordinatorStorage: CoordinatorStorageType
{
    public func store(_ presentable: ParentCoordinatorType)
    {
        self.list.append(presentable)
    }
    
    public func release(coordinatorWithId id: UUID)
    {
        let coordinatorsWithId = self.list.filter({ $0.id == id })
        
        coordinatorsWithId.forEach({ parent in
            parent.coordinatorStorage.clear()
        })
        
        self.list.removeAll(where: { $0.id == id })
    }
    
    public func clear()
    {
        self.list.forEach({ parent in
            parent.coordinatorStorage.clear()
        })
        
        self.list.removeAll()
    }
}
