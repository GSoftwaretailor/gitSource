//
//  SimpleFactory.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "SimpleFactory.h"


@implementation SimpleFactory

-(id<SimpleProtocolProduct>)CreateWithEnum:(SimpleOperate)plus{
    switch (plus) {
        case SimpleOperatePlus:
        {
            return [[SimpleProductAdd alloc]init];
        }
            break;
        case SimpleOperateSub:
        {
            return [[SimpleProductSub alloc]init];
        }
            break;
        default:
            break;
    }
    return nil;
}

@end
