//
//  ViewController.m
//  loopinsideDict
//
//  Created by Ranjithkumar on 14/11/16.
//  Copyright © 2016 ir4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createButtons{
    int numberOfButtons = 6;
    CGFloat xPos = 10;
    CGFloat yPos = 20;
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= numberOfButtons; i++){
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(xPos, yPos, 100, 40)];
        //Button Styles
        yPos += button.frame.size.height;
        button.tag = i;
        [self.view addSubview:button];
        
        //Add the button into array
        [mutableArray addObject:button];
    }
    
    
    //Get the response. Once you get the response do this.
    
    NSArray *responseArray = [[NSArray alloc] init]; //This should be the response from the server
    
    for (UIButton *button  in mutableArray) {
        for (NSDictionary *dict in responseArray){
            if ([[dict objectForKey:@"Id"] intValue] == button.tag){
                [button setTitle:[dict objectForKey:@"Name"] forState:UIControlStateNormal];
            }
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
