//
//  Card.h
//  CardMatchGame
//
//  Created by mac on 15/12/6.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contect;

-(BOOL)isMatch:(Card *)card;

@end
