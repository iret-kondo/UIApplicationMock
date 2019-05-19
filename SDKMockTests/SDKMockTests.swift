//
//  SDKMockTests.swift
//  SDKMockTests
//
//  Created by 近藤 寛志 on 2019/05/19.
//  Copyright © 2019 iret, Inc. All rights reserved.
//

import XCTest
@testable import SDKMock

class SDKMockTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testOpenUrl() {
        let viewController = ViewController()
        let mock = UIApplicationMock()
        mock.stubbedCanOpenURLResult = true
        
        viewController.open(urlString: "hoge", application: mock)
        
        XCTAssertTrue(mock.invokedCanOpenURL)
        XCTAssertTrue(mock.invokedOpen)
    }
    
    func testOpenUrlFailed() {
        let viewController = ViewController()
        let mock = UIApplicationMock()
        mock.stubbedCanOpenURLResult = false
        
        viewController.open(urlString: "hoge", application: mock)
        
        XCTAssertTrue(mock.invokedCanOpenURL)
        XCTAssertFalse(mock.invokedOpen)
    }
    
    func testOpenUrlGuardReturn() {
        let viewController = ViewController()
        let mock = UIApplicationMock()
        mock.stubbedCanOpenURLResult = true
        
        viewController.open(urlString: "", application: mock)
        
        XCTAssertFalse(mock.invokedCanOpenURL)
        XCTAssertFalse(mock.invokedOpen)
    }

}
