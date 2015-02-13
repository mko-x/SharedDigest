//
//  IGHMAC.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "IGHMAC.h"
#include <CommonCrypto/CommonDigest.h>
#include <CommonCrypto/CommonHMAC.h>

@implementation IGHMAC

+(NSString *)HMACWithMessage:(NSString*)message key:(NSString*)key encoding:(NSStringEncoding)encoding algorithm:(CCHmacAlgorithm)algorithm digestLength:(NSInteger)digestLength{
    const char *cKey  = [key cStringUsingEncoding:encoding];
    const char *cMessage = [message cStringUsingEncoding:encoding];
    unsigned char result[digestLength];
    CCHmac(algorithm, cKey, strlen(cKey), cMessage, strlen(cMessage), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:digestLength*2];
    for (int i = 0; i<digestLength; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    return ret;
}

+(NSData *)HMACWithData:(NSData*)data key:(NSData*)key algorithm:(CCHmacAlgorithm)algorithm digestLength:(NSInteger)digestLength{
    const char *cKey  = (char *)[key bytes];
    const char *cMessage = (char *)[data bytes];
    unsigned char result[digestLength];
    CCHmac(algorithm, cKey, strlen(cKey), cMessage, strlen(cMessage), result);
    return [NSData dataWithBytes:result length:digestLength];
}

@end
