//
//  StaffPresenter.swift
//  mvp-architecture-patterns-ios
//
//  Created by Juan Gerardo Cruz on 11/10/18.
//  Copyright © 2018 Juan Gerardo Cruz. All rights reserved.
//

import Foundation

class StaffPresenter: NSObject {

    private let staffService : StaffService
    weak private var staffView: StaffView?
    
    
    init(staffService: StaffService) {
        self.staffService = staffService
    }
    
    func attachView(view: StaffView) {
        self.staffView = view
    }
    
    func detachView() {
        staffView = nil
    }
    
    func getStaffList(){
        staffView?.startLoading()
        staffService.getStaff { [weak self] list in
            self?.staffView?.stopLoading()
            self?.staffView?.showData(list: list)
        }
    }
}
