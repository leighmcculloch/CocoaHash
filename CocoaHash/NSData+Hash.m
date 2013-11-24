//
//  NSData+Hash.m
//
//  Created by Leigh McCulloch on 23/11/2013.
//
//  Copyright (c) 2013, Leigh McCulloch
//  All rights reserved.
//
//  BSD-2-Clause License: http://opensource.org/licenses/BSD-2-Clause
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
//
//  1. Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
//  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
//  TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
//  PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
//  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
//  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
//  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "NSData+Hash.h"
#import "NSData+HexString.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (Hash)

#define DATA_BY_HASHING_WITH(ALG) \
- (NSData *)dataByHashingWith##ALG {\
	unsigned char hash[CC_##ALG##_DIGEST_LENGTH];\
	if (CC_##ALG([self bytes], (CC_LONG)[self length], hash)) {\
		NSData *data = [NSData dataWithBytes:hash length:CC_##ALG##_DIGEST_LENGTH];\
		return data;\
	}\
	return nil;\
}

#define STRING_BY_HASHING_WITH(ALG) \
- (NSString *)stringByHashingWith##ALG {\
	return [[self dataByHashingWith##ALG] hexString];\
}

DATA_BY_HASHING_WITH(MD2)
DATA_BY_HASHING_WITH(MD4)
DATA_BY_HASHING_WITH(MD5)
DATA_BY_HASHING_WITH(SHA1)
DATA_BY_HASHING_WITH(SHA224)
DATA_BY_HASHING_WITH(SHA256)
DATA_BY_HASHING_WITH(SHA384)
DATA_BY_HASHING_WITH(SHA512)

STRING_BY_HASHING_WITH(MD2)
STRING_BY_HASHING_WITH(MD4)
STRING_BY_HASHING_WITH(MD5)
STRING_BY_HASHING_WITH(SHA1)
STRING_BY_HASHING_WITH(SHA224)
STRING_BY_HASHING_WITH(SHA256)
STRING_BY_HASHING_WITH(SHA384)
STRING_BY_HASHING_WITH(SHA512)

@end
