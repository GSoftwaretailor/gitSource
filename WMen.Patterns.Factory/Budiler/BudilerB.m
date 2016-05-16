//
//  BudilerB.m
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import "BudilerB.h"

@implementation BudilerB 
@synthesize numA;
@synthesize numB;

-(void)plus{
    NSLog(@" BudilerB %lf",numA+numB);
}

-(void)sub{
    NSLog(@" BudilerB %lf",numA-numB);
}


@end
