//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import Foundation

protocol CoordinatorStorageType: AnyObject
{
    func store(_: ParentCoordinatorType)
    func release(coordinatorWithId: UUID)
    func clear()
}

