//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import Foundation

public protocol ParentCoordinatorType
{
    var id: UUID { get }
    var coordinatorStorage: CoordinatorStorageType { get }
}
