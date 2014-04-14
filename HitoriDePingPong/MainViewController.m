//
//  MainViewController.m
//  HitoriDePingPong
//
//  Created by hiro on 2014/04/14.
//  Copyright (c) 2014年 hiro. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        UILabel *labelX = [[UILabel alloc] init];
        labelX.frame = CGRectMake(10, 20, 100, 20);
        labelX.textColor = [UIColor blackColor];
        [self.view addSubview:labelX];
        
        
        UILabel *labelY = [[UILabel alloc] init];
        labelY.frame = CGRectMake(10, 40, 100, 20);
        labelY.textColor = [UIColor blackColor];
        [self.view addSubview:labelY];
        
        
        UILabel *labelZ = [[UILabel alloc] init];
        labelZ.frame = CGRectMake(10, 60, 100, 20);
        labelZ.textColor = [UIColor blackColor];
        [self.view addSubview:labelZ];
        
        self.motionManager = [[CMMotionManager alloc] init];
        
        if (self.motionManager.accelerometerAvailable)
        {
            // センサーの更新間隔の指定
            self.motionManager.accelerometerUpdateInterval = 1 / 10;  // 10Hz
            
            // ハンドラを指定
            CMAccelerometerHandler handler = ^(CMAccelerometerData *data, NSError *error)
            {
                // 画面に表示
                labelX.text = [NSString stringWithFormat:@"x %f", data.acceleration.x];
                labelY.text = [NSString stringWithFormat:@"y %f", data.acceleration.y];
                labelZ.text = [NSString stringWithFormat:@"x %f", data.acceleration.z];
            };
            
            // 加速度の取得開始
            [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:handler];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
