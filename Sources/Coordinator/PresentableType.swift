//
//  CoordinatorStorage.swift
//  Coordinator
//
//  Created by dev on 09/04/2022.
//

import UIKit

protocol PresentableType: AnyObject
{
    var id: UUID { get }
    var presentable: UIViewController { get }
}


