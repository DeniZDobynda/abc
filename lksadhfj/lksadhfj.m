//
//  lksadhfj.m
//  lksadhfj
//
//  Created by Denis Dobynda on 13.02.18.
//  Copyright © 2018 Denis Dobynda. All rights reserved.
//

#import "lksadhfj.h"
#import "Parser.h"

@implementation lksadhfj

- (void)doSome {
    Parser *p = [[Parser alloc] init];
    [p getNewsByFetchingQuery:@"trump" withNumberOfResults:2 withCompletition:^(NSArray<News *> *ne, NSError *er) {
        NSLog(ne[0]);
    }];
}

@end
