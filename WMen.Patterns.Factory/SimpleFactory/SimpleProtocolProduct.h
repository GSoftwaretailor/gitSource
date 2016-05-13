//
//  SimpleProtocolProduct.h
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>

@protocol SimpleProtocolProduct <NSObject>

@property(nonatomic,assign) double numA;
@property(nonatomic,assign) double numB;
-(NSString*)returnResult;

@end
