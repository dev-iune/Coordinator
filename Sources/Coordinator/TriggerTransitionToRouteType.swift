//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import RxSwift
import RxCocoa

protocol TriggerTransitionToRouteType: AnyObject
{
    associatedtype Route: RouteType
    
    var triggerTransitionToRoute: AnyObserver<Route> { get }
    
    func transition(to: Route)
    func bind(to: Driver<Route>)
}
