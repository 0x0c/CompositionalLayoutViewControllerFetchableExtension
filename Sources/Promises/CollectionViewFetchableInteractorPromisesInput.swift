//
//  CollectionViewFetchableInteractorPromisesInput.swift
//  
//
//  Created by Akira Matsuda on 2021/02/26.
//

import CompositionalLayoutViewController
import Foundation
import Promises

public protocol CollectionViewFetchableInteractorPromisesInput: AnyObject {
    func reload() -> Promise<[CollectionViewSection]>
    func fetch(force: Bool) -> Promise<[CollectionViewSection]>
}

public extension CollectionViewFetchableInteractorPromisesInput {
    func reload() -> Promise<[CollectionViewSection]> {
        return fetch(force: true)
    }

    func fetch(force: Bool = false) -> Promise<[CollectionViewSection]> {
        return fetch(force: force)
    }
}
