//
//  BaseProtocol.swift
//  mvp-architecture-patterns-ios
//
//  Created by Juan Gerardo Cruz on 11/10/18.
//  Copyright © 2018 Juan Gerardo Cruz. All rights reserved.
//

import Foundation

protocol BasePresenter {
    
    associatedtype View
    
    func attachView(view : View)
    
    func detachView()
    
    func destroy()
    
}
