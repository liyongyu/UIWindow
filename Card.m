//
//  Card.m
//  CardMatchGame
//
//  Created by mac on 15/12/6.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "Card.h"

@implementation Card

//@synthesize contect;

-(BOOL)isMatch:(Card *)card
{
    if ([card.contect isEqualToString:self.contect]) {
        return true;
    }
    return false;
}
@end
