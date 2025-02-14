//
//  chooseFoodViewController.m
//  
//
//  Created by Eric Yu on 9/13/15.
//
//

#import "chooseFoodViewController.h"
#import "foodViewController.h"

@implementation chooseFoodViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];
    self.title = @"Meals";
    [self setup];

}
-(void)setup {
    UIImage *faceImage = [UIImage imageNamed:@"homebutton.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
    self.title = @"Service";
    
}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    foodViewController *foodController = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"pizza"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"pizzaalone.png"]];
        [foodController setFoodItem:@"pizza"];
    } else if([[sender currentTitle] isEqualToString:@"tofu"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"tofualone.png"]];
        [foodController setFoodItem:@"tofu"];

    } else if([[sender currentTitle] isEqualToString:@"chicken"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"chickenalone.png"]];
        [foodController setFoodItem:@"chicken"];

    } else if([[sender currentTitle] isEqualToString:@"dumpling"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"dumplingalone.png"]];
        [foodController setFoodItem:@"chicken"];

    }
    
}

-(IBAction)foodAction:(id)sender  {
    [self performSegueWithIdentifier:@"foodsegue" sender:sender];
}

@end
