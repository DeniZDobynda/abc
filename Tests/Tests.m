//
//  Tests.m
//  Tests
//
//  Created by Denis Dobynda on 13.02.18.
//  Copyright © 2018 Denis Dobynda. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Parser.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    Parser *p = [[Parser alloc] init];
    [p getNewsByFetchingQuery:@"trump" withNumberOfResults:2 withCompletition:^(NSArray<News *> *newss, NSError *err) {
        NSLog(newss[0]);
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
