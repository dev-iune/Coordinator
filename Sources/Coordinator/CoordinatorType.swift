//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

protocol CoordinatorType: PresentableType, TriggerTransitionToRouteType, ParentCoordinatorType
{
    func start()
}

