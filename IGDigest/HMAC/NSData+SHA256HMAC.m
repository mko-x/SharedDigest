//
//  NSData+SHA256HMAC.m
//  SQRLEntrance
//
//  Created by Markus Kosmal on 27/09/14.
//  Copyright (c) 2014 adorsys GmbH & Co KG. All rights reserved.
//

#import "NSData+SHA256HMAC.h"

#import "IGHMAC.h"

@implementation NSData (SHA256HMAC)

-(NSData *)SHA256HMACWithDataKey:(NSData*)key{
    return [IGHMAC HMACWithData:self key:key algorithm:kCCHmacAlgSHA256 digestLength:CC_SHA256_DIGEST_LENGTH];
}


@end
