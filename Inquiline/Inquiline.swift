//
//  Inquiline.swift
//  Inquiline
//
//  Created by Kyle Fuller on 28/03/2015.
//  Copyright (c) 2015 Cocode. All rights reserved.
//

import Foundation


public typealias Environ = [String:AnyObject]

public typealias Status = String
public typealias Header = (String, String)
public typealias Headers = [Header]
public typealias Body = String?
public typealias NestResponse = (Status, Headers, Body)

public typealias NestApplication = Environ -> NestResponse

public class Request {
  public let environ:Environ

  public init(environ:Environ) {
    self.environ = environ
  }

  public var method:String {
    return environ["REQUEST_METHOD"] as? String ?? ""
  }

  public var path:String {
    return environ["PATH_INFO"] as? String ?? ""
  }
}
