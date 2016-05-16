//
//  Budiler.h
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import <Foundation/Foundation.h>
/**
 *  构建者 抽象构造者的意愿
 */
@protocol Budiler <NSObject>

-(void)plus;//加法
-(void)sub;//减法

@end
