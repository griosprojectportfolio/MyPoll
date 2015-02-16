//
//  TableViewCell.m
//  Voteatlas
//
//  Created by GrepRuby1 on 16/12/14.
//  Copyright (c) 2014 Voteatlas. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {

    self.imgVeUser.layer.borderWidth = 1.5;
    self.imgVeUser.layer.borderColor = [[UIColor whiteColor]CGColor];
    [self setGradientColorOfTwitter];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(IBAction) supprtBtnTapped:(id)sender{

}

-(IBAction) opposeBtnTapped:(id)sender{

}

-(IBAction) trashFileBtnTapped:(id)sender{

}

-(IBAction) mapBtnTapped:(id)sender{

}
-(IBAction) shareBtnTapped:(id)sender{

}

-(IBAction) postedBtnTapped:(id)sender{

}

-(IBAction) transBtnTapped:(id)sender{

}

-(IBAction) flageBtnTapped:(id)sender{

}
#pragma mark - Twitter cell gradient
/**************************************************************************************************
 Function to set twitter cell gradient
 **************************************************************************************************/

- (void)setGradientColorOfTwitter {

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.imgVwBgColor.frame;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:126/255.0f green:179/255.0f blue:249/255.0f alpha:1.0] CGColor],(id)[[UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:1.0] CGColor],nil];

    [gradient.colors reverseObjectEnumerator];
    [self.imgVwBgColor.layer insertSublayer:gradient atIndex:0];
}

@end
