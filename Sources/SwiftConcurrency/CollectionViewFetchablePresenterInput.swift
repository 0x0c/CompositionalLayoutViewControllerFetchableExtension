//
//  CollectionViewFetchablePresenterInput.swift
//  
//
//  Created by Akira Matsuda on 2021/05/31.
//

import Combine
import Foundation

public protocol CollectionViewFetchablePresenterInput {
    var isLoadingPublisher: Published<Bool>.Publisher { get }

    func reload()
    func fetch(force: Bool)
}

public extension CollectionViewFetchablePresenterInput {
    func reload() {
        fetch(force: true)
    }

    func fetch(force: Bool = false) {
        fetch(force: force)
    }
}