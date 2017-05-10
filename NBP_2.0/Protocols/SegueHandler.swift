//
//  SegueHandler.swift
//  NBP_2.0
//
//  Created by Jakub Nykiel on 10.05.2017.
//  Copyright © 2017 Jakub Nykiel. All rights reserved.
//

import Foundation
import UIKit

protocol SegueHandlerType
{
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController,
    SegueIdentifier.RawValue == String
{
    func performSegueWithIdentifier(identifier: SegueIdentifier, sender: AnyObject? = nil) {
        performSegue(withIdentifier: identifier.rawValue,
                     sender: sender)
    }
    
    func identifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        guard
            let stringIdentifier = segue.identifier,
            let identifier = SegueIdentifier(rawValue: stringIdentifier) else {
                fatalError("Couldn't find identifier for segue!")
        }
        return identifier
    }
}
