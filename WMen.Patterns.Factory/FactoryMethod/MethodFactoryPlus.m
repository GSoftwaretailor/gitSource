//
//  MethodFactoryPlus.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "MethodFactoryPlus.h"
#import "MethodProductPlus.h"
@implementation MethodFactoryPlus

-(id<MethodProtocolProduct>)createProduct{
    return [[MethodProductPlus alloc]init];
}

@end
