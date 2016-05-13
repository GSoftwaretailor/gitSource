//
//  ImplementFactoryA.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "ImplementFactoryA.h"
#import "ImplementProductA.h"
#import "ImplementProductB.h"

@implementation ImplementFactoryA


-(ImplementProductA *)createProductA{
    return [[ImplementProductA alloc]init];
}

-(ImplementProductB *)createProductB{
    return [[ImplementProductB alloc]init];
}


@end
