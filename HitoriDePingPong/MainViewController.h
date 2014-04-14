//
//  MainViewController.h
//  HitoriDePingPong
//
//  Created by hiro on 2014/04/14.
//  Copyright (c) 2014年 hiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface MainViewController : UIViewController

@property (nonatomic, strong) CMMotionManager *motionManager;

@end
