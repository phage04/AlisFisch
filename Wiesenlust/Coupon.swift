//
//  Coupon.swift
//  Wiesenlust
//
//  Created by Lyle Christianne Jover on 11/07/2016.
//  Copyright © 2016 Wiesenlust. All rights reserved.
//

import Foundation
import UIKit

public class Coupon{
    
    private var _title: String!
    private var _subTitle: String!
    private var _discount: Int!
    private var _validity: String!
    private var _terms: String!
    private var _special: Bool!
    private var _discountType: String!
    
    
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
    
    init(titleTxt: String, discountTxt: Int, validityTxt: String?, termsTxt: String?, discType: String, subtitle: String?) {
        
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
        
        
        
        
    }
    
    
    
}