//
//  MethodFactorySub.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "MethodFactorySub.h"
#import "MethodProductSub.h"

@implementation MethodFactorySub

-(id<MethodProtocolProduct>)createProduct{
    return [[MethodProductSub alloc]init];
}

@end
