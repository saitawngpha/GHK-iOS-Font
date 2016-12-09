//
//  AdMobHelper.m
//  GHKFont
//
//  Created by saipha on 29/11/2016.
//  Copyright © 2016 saipha. All rights reserved.
//

#import "AdMobHelper.h"

void AdMobQuickSet(NSString *adUnitID, UIViewController *rootViewController, UIView *parentView) {
    GADBannerView *bannerView = [[GADBannerView alloc] initWithFrame:parentView.bounds];
    [parentView addSubview:bannerView];
    AdMobBannerViewQuickSet(adUnitID, rootViewController, bannerView);
}

void AdMobBannerViewQuickSet(NSString *adUnitID, UIViewController *rootViewController, GADBannerView *bannerView) {
    bannerView.adUnitID = adUnitID;
    bannerView.rootViewController = rootViewController;
    
    GADRequest *request = [GADRequest request];
#if TARGET_IPHONE_SIMULATOR
    request.testDevices = @[ kGADSimulatorID ];
#endif
    [bannerView loadRequest:request];
}
