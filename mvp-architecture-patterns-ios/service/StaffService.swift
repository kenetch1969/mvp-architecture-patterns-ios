//
//  StaffService.swift
//  mvp-architecture-patterns-ios
//
//  Created by Juan Gerardo Cruz on 11/10/18.
//  Copyright © 2018 Juan Gerardo Cruz. All rights reserved.
//

import Foundation

class StaffService {
    
    func getStaff(callBack: @escaping ([Staff]) -> Void ){
        let staffList = [Staff(first_name: "Tran", last_name: "Mr", role: 1),
                         Staff(first_name: "Tran", last_name: "Mrs", role: 2)]
        let delayTime = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: delayTime){
            callBack(staffList)
        }
    }
}
