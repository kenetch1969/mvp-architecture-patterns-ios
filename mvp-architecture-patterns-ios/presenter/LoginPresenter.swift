//
//  LoginPresenter.swift
//  mvp-architecture-patterns-ios
//
//  Created by Juan Gerardo Cruz on 11/10/18.
//  Copyright © 2018 Juan Gerardo Cruz. All rights reserved.
//

import Foundation

class LoginPresenter: BasePresenter {
    
    typealias View = LoginView
    var loginView : LoginView?
    
    func attachView(view: LoginView) {
        self.loginView = view
    }
    
    func detachView() {
    }
    
    func destroy() {
    }
    
    private func emailValid(emailAddress : String) -> Bool {
        let emailRegEx = "[A-Z0–9a-z._%+-]+@[A-Za-z0–9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailAddress)
    }
    
    private func isValidRegulateExpresion(testStr: String?) -> Bool {
        guard testStr != nil else { return false }
        let wordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return wordTest.evaluate(with: testStr)
    }
    
    func login(username : String, password : String){
        //Make an API Call from the given username and password
        if isValidRegulateExpresion(testStr: username) {
            //self.loginView?.showMessage(mensaje: "Expresion Valida")
            self.loginView?.navigationToHome()
        }else{
            self.loginView?.showMessage(mensaje: "Expresion invalida")
        }
        
    }
    
}
