//
//  Singleton2.h
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import <Foundation/Foundation.h>

@interface Singleton2 : NSObject
+(instancetype)shareAuhtorization;

@property(nonatomic,strong) NSString* strA;
@property(nonatomic,strong) NSString* strB;
@end
