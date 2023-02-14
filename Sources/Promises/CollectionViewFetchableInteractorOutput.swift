//
//  CollectionViewFetchablePresenterInput.swift
//
//
//  Created by Akira Matsuda on 2021/05/31.
//

import Combine
import Foundation
import Promises

public protocol CollectionViewFetchableInteractorOutput: AnyObject {
    func willFetchStart()
    func willFetchEnd()
    func didFetchEnd()
}

public extension CollectionViewFetchableInteractorOutput {
    @discardableResult
    func prepareFetch<Value>(_ promise: Promise<Value>) -> Promise<Value> {
        willFetchStart()
        promise.always { [weak self] in
            guard let weakSelf = self else {
                return
            }
            weakSelf.didFetchEnd()
        }
        return promise
    }
}
