//
//  LoggedInInteractor.swift
//  TicTacToe
//
//  Created by Arjay Waran on 4/29/19.
//  Copyright © 2019 Uber. All rights reserved.
//

import RIBs
import RxSwift

protocol LoggedInRouting: Routing {
    func routeToTicTacToe()
    func routeToOffGame()
    func cleanupViews()
}

protocol LoggedInListener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class LoggedInInteractor: Interactor, LoggedInInteractable {

    weak var router: LoggedInRouting?
    weak var listener: LoggedInListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init() {}

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()

        router?.cleanupViews()
        // TODO: Pause any business logic.
    }
    func startTicTacToe() {
        router?.routeToTicTacToe()
    }

    func gameDidEnd() {
        router?.routeToOffGame()
    }
    
}
