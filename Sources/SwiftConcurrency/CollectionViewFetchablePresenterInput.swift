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

    func reload() async throws
    func fetch(force: Bool) async throws
}

public extension CollectionViewFetchablePresenterInput {
    func reload() async throws {
        try await fetch(force: true)
    }

    func fetch(force: Bool = false) async throws {
        try await fetch(force: force)
    }
}