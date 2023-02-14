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
    @discardableResult
    func fetch(force: Bool) async throws -> [CollectionViewSection]
}

public extension CollectionViewFetchableInteractorInput {
    func reload() async throws {
        try await fetch(force: true)
    }

    @discardableResult
    func fetch(force: Bool = false) async throws -> [CollectionViewSection] {
        return try await fetch(force: force)
    }
}
