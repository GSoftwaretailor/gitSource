//
//  ImplementFactoryB.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "ImplementFactoryB.h"
#import "ImplementProductA.h"
#import "ImplementProductB.h"

@implementation ImplementFactoryB
-(ImplementProductA *)createProductA{
    return [[ImplementProductA alloc]init];
}

-(ImplementProductB *)createProductB{
    return [[ImplementProductB alloc]init];
}

@end
