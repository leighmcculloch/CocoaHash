//
//  CocoaHashTests.m
//  CocoaHashTests
//
//  Created by Leigh McCulloch on 24/11/2013.
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

#import <XCTest/XCTest.h>
#import "NSString+Hash.h"

@interface CocoaHashTests : XCTestCase

@end

@implementation CocoaHashTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testMD2 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithMD2UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"d9cce882ee690a5c1ce70beff3a78c77"]);
}

- (void)testMD4 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithMD4UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"aa010fbc1d14c795d86ef98c95479d17"]);
}

- (void)testMD5 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithMD5UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"5eb63bbbe01eeed093cb22bb8f5acdc3"]);
}

- (void)testSHA1 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithSHA1UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"2aae6c35c94fcfb415dbe95f408b9ce91ee846ed"]);
}

- (void)testSHA224 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithSHA224UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"2f05477fc24bb4faefd86517156dafdecec45b8ad3cf2522a563582b"]);
}

- (void)testSHA256 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithSHA256UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"]);
}

- (void)testSHA384 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithSHA384UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"fdbd8e75a67f29f701a4e040385e2e23986303ea10239211af907fcbb83578b3e417cb71ce646efd0819dd8c088de1bd"]);
}

- (void)testSHA512 {
	NSString *str = @"hello world";
	NSString *hash = [str stringByHashingWithSHA512UsingEncoding:NSUTF8StringEncoding];
	XCTAssertTrue([hash isEqualToString:@"309ecc489c12d6eb4cc40f50c902f2b4d0ed77ee511a7c7a9bcd3ca86d4cd86f989dd35bc5ff499670da34255b45b0cfd830e81f605dcf7dc5542e93ae9cd76f"]);
}

@end
