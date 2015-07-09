//
//  InquilineTests.swift
//  InquilineTests
//
//  Created by Kyle Fuller on 28/03/2015.
//  Copyright (c) 2015 Cocode. All rights reserved.
//

import Foundation
import XCTest
import Inquiline

class InquilineTests: XCTestCase {
  func testStatusIsString() {
    let status:Status = "200 OK"
    XCTAssertTrue((status as Any) is String)
  }

  func testHeaderIsTupleOfString() {
    let header:Header = ("Content-Type", "plain/text; charset=utf8")
    XCTAssertTrue((header as Any) is (String, String))
  }

  func testHeadersIsArrayOfHeader() {
    let headers:Headers = [("Content-Type", "plain/text; charset=utf8")]
    XCTAssertTrue((headers as Any) is [Header])
  }

  func testBodyIsString() {
    let body:Body = "Hello World"
    XCTAssertNotNil(body as String?)
  }
}

class RequestTests: XCTestCase {
  func testMethod() {
    let request = Request(environ: ["REQUEST_METHOD": "PATCH"])
    XCTAssertEqual(request.method, "PATCH")
  }

  func testPath() {
    let request = Request(environ: ["PATH_INFO": "/test/"])
    XCTAssertEqual(request.path, "/test/")
  }
}

