//
//  NSObject+XMAssociated.swift
//  XMUtil
//
//  Created by flowerflower on 2021/9/12.
//

import Foundation


extension NSObject{
    
    fileprivate static let propertiesContainerKey: UnsafeRawPointer! = UnsafeRawPointer.init(bitPattern: "propertiesContainerKey".hashValue)
    
}

extension NSObject{
    
    var propertiesContainer: [String : AnyObject]{
        set{
            objc_setAssociatedObject(self, NSObject.propertiesContainerKey, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get{
            if let pc = objc_getAssociatedObject(self, NSObject.propertiesContainerKey) as? [String : AnyObject]{
                return pc
            }
            
            let temp: [String : AnyObject]  = [:]
            self.propertiesContainer = temp
            return temp
        }   
    }
}
