//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_entityName___Store {
    func get___VARIABLE_entityPluralName___(completion: ___VARIABLE_entityName___StoreGet___VARIABLE_entityPluralName___CompletionHandler)
    func get___VARIABLE_entityName___(id: String, completion: ___VARIABLE_entityName___StoreGet___VARIABLE_entityName___CompletionHandler)
    func create___VARIABLE_entityName___(___VARIABLE_entityLowercaseName___ToCreate ___VARIABLE_entityLowercaseName___: ___VARIABLE_entityName___, completion: ___VARIABLE_entityName___StoreCreate___VARIABLE_entityName___CompletionHandler)
    func update___VARIABLE_entityName___(___VARIABLE_entityLowercaseName___ToUpdate ___VARIABLE_entityLowercaseName___: ___VARIABLE_entityName___, completion: ___VARIABLE_entityName___StoreUpdate___VARIABLE_entityName___CompletionHandler)
    func delete___VARIABLE_entityName___(id: String, completion: ___VARIABLE_entityName___StoreDelete___VARIABLE_entityName___CompletionHandler)
}

typealias ___VARIABLE_entityName___StoreGet___VARIABLE_entityPluralName___CompletionHandler = (_ result: ___VARIABLE_entityName___StoreResult<[___VARIABLE_entityName___]>) -> Void
typealias ___VARIABLE_entityName___StoreGet___VARIABLE_entityName___CompletionHandler = (_ result: ___VARIABLE_entityName___StoreResult<___VARIABLE_entityName___>) -> Void
typealias ___VARIABLE_entityName___StoreCreate___VARIABLE_entityName___CompletionHandler = (_ result: ___VARIABLE_entityName___StoreEmptyResult) -> Void
typealias ___VARIABLE_entityName___StoreUpdate___VARIABLE_entityName___CompletionHandler = (_ result: ___VARIABLE_entityName___StoreEmptyResult) -> Void
typealias ___VARIABLE_entityName___StoreDelete___VARIABLE_entityName___CompletionHandler = (_ result: ___VARIABLE_entityName___StoreEmptyResult) -> Void

enum ___VARIABLE_entityName___StoreResult<U> {
    case Success(result: U)
    case Failure(error: ___VARIABLE_entityName___StoreError)
}

enum ___VARIABLE_entityName___StoreEmptyResult {
    case Success
    case Failure(error: ___VARIABLE_entityName___StoreError)
}

enum ___VARIABLE_entityName___StoreError: Equatable, Error {
    case CannotGet(String)
    case CannotCreate(String)
    case CannotUpdate(String)
    case CannotDelete(String)
}

func ==(lhs: ___VARIABLE_entityName___StoreError, rhs: ___VARIABLE_entityName___StoreError) -> Bool {
    switch (lhs, rhs) {
    case (.CannotGet(let a), .CannotGet(let b)) where a == b: return true
    case (.CannotCreate(let a), .CannotCreate(let b)) where a == b: return true
    case (.CannotUpdate(let a), .CannotUpdate(let b)) where a == b: return true
    case (.CannotDelete(let a), .CannotDelete(let b)) where a == b: return true
    default:
        return false
    }
}