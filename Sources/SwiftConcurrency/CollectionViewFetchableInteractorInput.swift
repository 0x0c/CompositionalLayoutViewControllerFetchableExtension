//
//  CollectionViewFetchableInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2021/02/26.
//

import CompositionalLayoutViewController
import Foundation

public protocol CollectionViewFetchableInteractorInput: AnyObject {
    func reload() async throws
    func fetch(force: Bool) async throws
}

public extension CollectionViewFetchableInteractorInput {
    func reload() async throws {
        try await fetch(force: true)
    }

    func fetch(force: Bool = false) async throws {
        try await fetch(force: force)
    }
}
