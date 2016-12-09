//
//  ViewController.m
//  GHKFont
//
//  Created by saipha on 25/11/2016.
//  Copyright © 2016 saipha. All rights reserved.
//

@import GoogleMobileAds;
#import "ViewController.h"
#import "GBFlatButton/GBFlatButton.h"
#import "GBFlatButton/UIColor+GBFlatButton.h"
#import "ZHPopupView/ZHPopupView.h"
#import "Shimmer/FBShimmeringView.h"
#import "Shimmer/FBShimmeringLayer.h"



@interface ViewController ()

@property (nonatomic, weak) IBOutlet GBFlatButton *pinkButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *yellowButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *orangeButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *greenButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *blueButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *purpleButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *whiteButton;

@property (nonatomic, weak) IBOutlet GBFlatButton *whiteSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *pinkSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *yellowSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *orangeSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *greenSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *blueSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *purpleSelectedButton;


/// The interstitial ad.
@property(nonatomic, strong) GADInterstitial *interstitial;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Replace this ad unit ID with your own ad unit ID.
    self.bannerView.adUnitID = @"ca-app-pub-9447884126970962/1492409530";
    self.bannerView.rootViewController = self;
    
    GADRequest *request = [GADRequest request];
    // Requests test ads on devices you specify. Your test device ID is printed to the console when
    // an ad request is made. GADBannerView automatically returns test ads when running on a
    // simulator.
    //request.testDevices = @[kGADSimulatorID];
    [self.bannerView loadRequest:request];
    [self createAndLoadInterstitial];
    
    _pinkSelectedButton.selected = YES;
    _yellowSelectedButton.selected = YES;
    _orangeSelectedButton.selected = YES;
    _greenSelectedButton.selected = YES;
    _blueSelectedButton.selected = YES;
    _purpleSelectedButton.selected = YES;
    
    
    _purpleButton.selected = YES;
    _yellowButton.selected = YES;
    _orangeButton.selected = YES;
    _greenButton.selected = YES;
    _blueButton.selected = YES;
    _pinkButton.selected = YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Interstitial Ads Void
- (void)createAndLoadInterstitial {
    self.interstitial =
    [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-9447884126970962/1352808734"];
    
    GADRequest *request = [GADRequest request];
    // Request test ads on devices you specify. Your test device ID is printed to the console when
    // an ad request is made.
    //request.testDevices = @[ kGADSimulatorID];
    [self.interstitial loadRequest:request];
}


- (IBAction)GHKMuse:(GBFlatButton *)sender {
    if (self.interstitial.isReady){
        [self.interstitial presentFromRootViewController:self];
    }
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@ "http://m.greathorkham.com/ios/ghkmuseios.mobileconfig"  ]];
   }

- (IBAction)GHKYgn:(UIButton *)sender {
    if (self.interstitial.isReady){
        [self.interstitial presentFromRootViewController:self];
    }    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@ "http://m.greathorkham.com/ios/ghkygnios.mobileconfig"  ]];
    
}

- (IBAction)NKwp:(UIButton *)sender {
    if (self.interstitial.isReady){
    [self.interstitial presentFromRootViewController:self];
    }
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@ "http://www.namkhone.com/repo/unicodetai.mobileconfig"  ]];
}

- (IBAction)About:(UIButton *)sender {
    
    if (self.interstitial.isReady)
        [self.interstitial presentFromRootViewController:self];
    
    ZHPopupView *popupView = [ZHPopupView popUpDialogViewInView:nil
                                                        iconImg:[UIImage imageNamed:@"correct_icon"]
                                                backgroundStyle:ZHPopupViewBackgroundType_Blur
                                                          title:@"App iNfo"
                                                        content:@"Font Developer : PJaiLon \n\nApp Developer : Sai TawngPha!"
                                                   buttonTitles:@[@"Cancel", @"Confirm"]
                                            confirmBtnTextColor:nil otherBtnTextColor:nil
                                             buttonPressedBlock:^(NSInteger btnIdx) {
                                                 
                                                 
                                             }];
    [popupView present];

}

@end
