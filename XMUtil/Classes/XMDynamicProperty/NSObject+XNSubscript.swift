//
//  File.swift
//  XMUtil
//
//  Created by flowerflower on 2021/9/12.
//

import Foundation

public extension NSObject {
    
    //获取或设置动态属性
    subscript(dynamicProperty key: String) -> AnyObject? {
        set {self.addProperty(name: key, value: newValue)}
        get { self.getProperty(name: key)}
    }
}
