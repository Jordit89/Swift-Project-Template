//
//  BaseDataAccess.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/15/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation
import RealmSwift
import RxRealm
import RxSwift

protocol DataAccess {
  var realm: Realm? { get }
  var realmConfiguration: Realm.Configuration { get }
}

class BaseDataAccess: DataAccess {
  var disposeBag = DisposeBag()
  let realmConfiguration = Realm.Configuration()

  var realm: Realm? {
    guard let realm = try? Realm(configuration: realmConfiguration) else { return nil }
    return realm
  }
}
