//
//  NSData+SHA256HMAC.h
//  SQRLEntrance
//
//  Created by Markus Kosmal on 27/09/14.
//  Copyright (c) 2014 adorsys GmbH & Co KG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (SHA256HMAC)

-(NSData *)SHA256HMACWithDataKey:(NSData*)key;

@end
