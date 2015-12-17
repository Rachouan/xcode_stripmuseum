//
//  DetailView.m
//  Stripmuseumv2
//
//  Created by Rachouan Rejeb on 17/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import "DetailView.h"

@implementation DetailView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"SOMETHING");
        
    
        
        self.backgroundColor = [UIColor colorWithRed:1  green:0.831  blue:0.376 alpha:1];
        
        
    }
    return self;
    
}


@end
