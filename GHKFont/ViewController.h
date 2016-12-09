//
//  ViewController.h
//  GHKFont
//
//  Created by saipha on 25/11/2016.
//  Copyright © 2016 saipha. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GADBannerView;


@interface ViewController : UIViewController


- (IBAction)GHKMuse:(UIButton *)sender;
- (IBAction)GHKYgn:(UIButton *)sender;
- (IBAction)NKwp:(UIButton *)sender;
- (IBAction)About:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet GADBannerView *bannerView;

@end

