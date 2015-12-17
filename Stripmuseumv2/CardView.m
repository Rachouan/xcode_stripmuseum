//
//  CardView.m
//  Stripmuseumv2
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import "CardView.h"

@implementation CardView

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
        self.backgroundColor = [UIColor colorWithRed:0.184  green:0.251  blue:0.345 alpha:1];
        
        
        
        UIFont * bariolB = [UIFont fontWithName:@"Bariol-Bold" size:20.0];
        
        UIImage * image = [UIImage imageNamed:@"1"];
        UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
        
        imageView.frame = CGRectMake(0,0,frame.size.width,frame.size.height);
        
        
        UILabel * title = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, self.frame.size.width - 40, 20)];
        title.backgroundColor = [UIColor clearColor];
        title.textColor = [UIColor whiteColor];
        title.font = bariolB;
        title.text = @"HERGE";
        
        
        UIView *container = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height - 100, self.frame.size.width , 100)];
        container.backgroundColor = [UIColor colorWithRed:0.184  green:0.251  blue:0.345 alpha:1];
        [container addSubview:title];
        
        
        
        [self addSubview:imageView];
        [self addSubview:container];
        
        [self.layer setCornerRadius:15.0f];
        [self.layer setMasksToBounds:YES];
        
    }
    return self;
}

@end
