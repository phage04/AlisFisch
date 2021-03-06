//
//  Coupon.swift
//  Wiesenlust
//
//  Created by Lyle Christianne Jover on 11/07/2016.
//  Copyright © 2016 Wiesenlust. All rights reserved.
//

import Foundation
import UIKit

open class Coupon{
    
    fileprivate var _title: String!
    fileprivate var _subTitle: String!
    fileprivate var _discount: Int!
    fileprivate var _validity: String!
    fileprivate var _terms: String!
    fileprivate var _special: Bool!
    fileprivate var _discountType: String!
    fileprivate var _couponRef: String!
    fileprivate var _couponUses: Int!
    fileprivate var _location: Bool!

    
    var location: Bool {
        return _location
    }
    
    var couponRef: String {
        
        if _couponRef == nil {
            return ""
        }
        return _couponRef
        
    }
    var couponUses: Int {
        get {
            if _couponUses == nil {
                return 0
            }
            return _couponUses
        }
        set {
            _couponUses = couponUses
        }
        
    }
    
    var title: String {
        if _title == nil {
            return ""
        }
        return _title!
    }
    
    var subtitle: String {
        if _subTitle == nil {
            return ""
        }
        return _subTitle!
    }
    
    var discount: Int {
        if _discount == nil {
            return 0
        }
        return _discount!
    }
    
    var validity: String {
        if _validity == nil {
            return ""
        }
        return _validity!
    }
    
    var terms: String {
        if _terms == nil {
            return ""
        }
        return _terms
    }
    
    
    var discountType: String {
        if _discountType == nil {
            return ""
        }
        return _discountType
    }
    
    init(titleTxt: String, discountTxt: Int, validityTxt: String?, termsTxt: String?, discType: String, subtitle: String?, identifier: String, uses: Int, location: Bool) {
        
        self._couponRef = identifier
        self._couponUses = uses
        
        self._title = titleTxt
        self._discount = discountTxt
        
        if let txtValidity = validityTxt {
          self._validity = txtValidity
        }
        
        if let txtTerms = termsTxt {
          self._terms = txtTerms
        }
        
        if let titleSub = subtitle {
            self._subTitle = titleSub
        }
        
        self._discountType = discType
        
        self._location = location
        
        
        
        
    }
    
    func changeStatus(_ status: Bool) {
    self._location = status
    }
    
    
    
}
