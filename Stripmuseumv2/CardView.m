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
- (id)initWithTitle:(NSString * )titel andImage:(UIImage *)img andSubTitle:(NSString*)subtitle andFrame:(CGRect)frame{
    
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithRed:0.184  green:0.251  blue:0.345 alpha:1];
        
        
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        
        UIFont * bariolB = [UIFont fontWithName:@"Bariol-Bold" size:20.0];
        
        UIImageView * imageView = [[UIImageView alloc] initWithImage:img];
        
        imageView.frame = CGRectMake(0,0,frame.size.width,frame.size.height);
        
        
        UILabel * title = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, self.frame.size.width - 80, 20)];
        title.backgroundColor = [UIColor clearColor];
        title.textColor = [UIColor whiteColor];
        title.font = bariolB;
        title.text = titel;
        
        UILabel * subTitle = [[UILabel alloc] initWithFrame:CGRectMake(40, title.frame.origin.y + title.frame.size.height + 20, self.frame.size.width - 80, 20)];
        subTitle.backgroundColor = [UIColor clearColor];
        subTitle.textColor = [UIColor colorWithRed:1  green:1  blue:1 alpha:.5];
        subTitle.font = bariolB;
        subTitle.text = subtitle;
        
        CGSize containerSize = CGSizeMake(self.frame.size.width, title.frame.size.height + subTitle.frame.size.height + 120);
        
        UIView *container = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height - containerSize.height, containerSize.width , containerSize.height)];
        container.backgroundColor = [UIColor colorWithRed:0.184  green:0.251  blue:0.345 alpha:1];
        [container addSubview:title];
        [container addSubview:subTitle];
        
        
        
        
        [self addSubview:imageView];
        [self addSubview:container];
        
        [self.layer setCornerRadius:15.0f];
        [self.layer setMasksToBounds:YES];
        
    }
    return self;
}

-(IBAction)buttonPressed:(id)sender{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playGame" object:self];
    
}

@end
