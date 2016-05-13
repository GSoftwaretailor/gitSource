//
//  MethodProtocolFactory.h
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>
#import "MethodProtocolProduct.h"

@protocol MethodProtocolFactory <NSObject>

-(id<MethodProtocolProduct>)createProduct;

@end
