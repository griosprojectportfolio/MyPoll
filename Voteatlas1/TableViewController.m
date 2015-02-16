//
//  TableViewController.m
//  Voteatlas
//
//  Created by GrepRuby1 on 16/12/14.
//  Copyright (c) 2014 Voteatlas. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()

@property (nonatomic, strong)NSMutableArray *arryData;

@end

@implementation TableViewController

#pragma mark - View Controller Configration

- (void)configureSearchBar{

    UIView *barWrapper = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 180.0, 44.0)];
    barWrapper.autoresizingMask = 0;
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0.0, 2.0, 170.0, 35.0)];
    searchBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    searchBar.delegate = self;
    [self removeUISearchBarBackgroundInViewHierarchy:searchBar];
    searchBar.backgroundColor = [UIColor clearColor];
    [barWrapper addSubview:searchBar];
    
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [searchButton addTarget:self action:@selector(whenSearchTapped:) forControlEvents:UIControlEventTouchUpInside];
    [searchButton setTitle:@"Search" forState:UIControlStateNormal];
    searchButton.frame = CGRectMake(175, 0 , 50, 40.0);

  
  UIView *searchBarView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 260.0, 44.0)];
  [searchBarView addSubview:barWrapper];
  [searchBarView addSubview:searchButton];
  //searchBarView.backgroundColor = [UIColor redColor];
  self.navigationItem.titleView = searchBarView;

    [self demoData];
}


- (void)removeUISearchBarBackgroundInViewHierarchy:(UIView *)view {

    for (UIView *subview in [view subviews]) {
        if ([subview isKindOfClass:NSClassFromString(@"UISearchBarBackground")]) {
            [subview removeFromSuperview];
            break; //To avoid an extra loop as there is only one UISearchBarBackground
        } else {
            [self removeUISearchBarBackgroundInViewHierarchy:subview];
        }
    }
}

- (void)whenRightItemTapped:(id)sender{

}

- (void)whenLeftItemTapped:(id)sender{
  
}

- (void)whenSearchTapped:(id)sender{
  
}

- (void)demoData{

    self.arryData = [[NSMutableArray alloc]init];

    [self.arryData addObject:@{@"title":@"Single vote is required. My poll will give result.", @"displayImage":@"download1", @"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"A class vote for. My poll will give exect polling vote.", @"displayImage":@"newsWave",@"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"Still rarely win. My poll will give exect polling vote.", @"displayImage":@"news", @"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"Different majority. My poll will give exect polling vote.", @"displayImage":@"download1", @"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"Who prefer green. My poll will give exect polling vote.", @"displayImage":@"newsWave", @"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"A development on. My poll will give exect polling vote.", @"displayImage":@"news", @"displayIcon":@"photo"}];
    [self.arryData addObject:@{@"title":@"Anyone who wants to win. My poll will give exect polling vote.", @"displayImage":@"download1", @"displayIcon":@"photo"}];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self configureSearchBar];

    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.arryData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    NSDictionary *data =  [self.arryData objectAtIndex:indexPath.row];
    cell.displayIcon.image = [UIImage imageNamed:[data objectForKey:@"displayIcon"]];
    cell.displayImage.image = [UIImage imageNamed:[data objectForKey:@"displayImage"]];
    cell.title.text = [data objectForKey:@"title"];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
