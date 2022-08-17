//
//  App_Life_Cycle_And_DelegatesUITestsLaunchTests.swift
//  App_Life_Cycle_And_DelegatesUITests
//
//  Created by Tanmay Deo on 17/08/22.
//

import XCTest

class App_Life_Cycle_And_DelegatesUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
