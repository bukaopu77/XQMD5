//
//  XQMD5.m
//  XQMD5
//
//  Created by 周剑 on 16/2/24.
//  Copyright © 2016年 bukaopu. All rights reserved.
//

#import "XQMD5.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation XQMD5

+(NSString *)md5HexDigest:(NSString *)input {
    const char* str = [input UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, strlen(str), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%2s",result];
    }
    return ret;
}

@end
