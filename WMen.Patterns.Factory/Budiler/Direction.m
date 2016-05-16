//
//  Direction.m
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import "Direction.h"

@implementation Direction

-(void)directionBudiler:(id<Budiler>)builder{
    [builder plus];
    [builder sub];
}

@end
