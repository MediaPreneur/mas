//
//  SignOut.swift
//  mas-cli
//
//  Created by Andrew Naylor on 14/02/2016.
//  Copyright © 2016 Andrew Naylor. All rights reserved.
//

struct SignOutCommand: CommandProtocol {
    typealias Options = NoOptions<MASError>
    let verb = "signout"
    let function = "Sign out of the Mac App Store"
    
    func run(_ options: Options) -> Result<(), MASError> {
        let accountService: ISAccountService = ISServiceProxy.genericShared().accountService
        accountService.signOut()
        return .success(())
    }
}
