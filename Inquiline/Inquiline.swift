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
public typealias Body = String
public typealias Response = (Status, Headers, Body)

public typealias NestApplication = (Environ) -> (Response)
