//
//  ViewController.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 20/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZPlaylistTableViewController.h"
#import "AKZGetResultsResponse.h"
#import "AKZSessionManager.h"
#import "AKZResults.h"
#import "AKZPlaylistDetailTableViewController.h"
#import "SVProgressHUD.h"


@interface AKZPlaylistTableViewController ()

@property(nonatomic, strong)NSArray *playlistItems;

@end

@implementation AKZPlaylistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Akazoo Playlists";
    [SVProgressHUD showWithStatus:@"Loading Playlists"];
    
    
    [[AKZSessionManager sharedManager]getResults:^(AKZGetResultsResponse *response) {
        [SVProgressHUD dismiss];
        self.playlistItems = response.result;
        NSLog(@"Print Result %@",response.result);
        [self.tableView reloadData];
    } failure:^(NSError *error) {
        [SVProgressHUD dismiss];
        NSLog(@"Got Error %@",error);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableView DataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.playlistItems.count;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"playlistCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    AKZResults *playlist = self.playlistItems[indexPath.row];
    
    UILabel *playlistName = [cell.contentView viewWithTag:1];
    UILabel *itemCount = [cell.contentView viewWithTag:2];
    playlistName.text = [@"Playlist: " stringByAppendingString:playlist.name];
    itemCount.text = [playlist.itemCount.stringValue stringByAppendingString:@" tracks"];
    
    cell.tag = indexPath.row;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    AKZResults *playlistTapped = self.playlistItems[[sender tag]];
    
    if([segue.identifier isEqualToString:@"playlistDetail"]){
        AKZPlaylistDetailTableViewController *controller = (AKZPlaylistDetailTableViewController *)segue.destinationViewController;
        controller.playlistDetail = playlistTapped;
    }
}

@end