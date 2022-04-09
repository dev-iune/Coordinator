//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

public protocol CoordinatorType: PresentableType, TriggerTransitionToRouteType, ParentCoordinatorType
{
    func start()
}

