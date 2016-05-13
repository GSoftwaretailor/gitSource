//
//  SimpleFactory.h
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>
#import "SimpleProtocolProduct.h"
#import "SimpleProductAdd.h"
#import "SimpleProductSub.h"


typedef enum : NSUInteger {
    SimpleOperatePlus,
    SimpleOperateSub
} SimpleOperate;

@interface SimpleFactory : NSObject

-(id<SimpleProtocolProduct>)CreateWithEnum:(SimpleOperate)plus;


@end
