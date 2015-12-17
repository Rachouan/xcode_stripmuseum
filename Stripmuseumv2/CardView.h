//
//  CardView.h
//  Stripmuseumv2
//
//  Created by Rachouan Rejeb on 16/12/15.
//  Copyright © 2015 Rachouan Rejeb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardView : UIButton

- (id)initWithTitle:(NSString * )titel andImage:(UIImage *)img andSubTitle:(NSString*)subtitle andFrame:(CGRect)frame;

@end
