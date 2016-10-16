//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___RouterInput {
    
}

protocol ___FILEBASENAMEASIDENTIFIER___RouterDataSource:class {
    
}

protocol ___FILEBASENAMEASIDENTIFIER___RouterDataDestination:class {
    
}

class ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___RouterInput {
    
    weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController!
    weak private var dataSource: ___FILEBASENAMEASIDENTIFIER___RouterDataSource!
    weak var dataDestination: ___FILEBASENAMEASIDENTIFIER___RouterDataDestination!
    
    init(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController,
         dataSource:___FILEBASENAMEASIDENTIFIER___RouterDataSource,
         dataDestination:___FILEBASENAMEASIDENTIFIER___RouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    func passDataToNextScene(segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        
    }
}
