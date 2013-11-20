//
//  KMViewController.m
//  Map App
//
//  Created by Kelli Mohr on 11/18/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import "KMViewController.h"

@interface KMViewController ()

@end

@implementation KMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //self.navigationController.toolbarHidden = NO;
    
    _mapView.showsUserLocation = YES;
    _mapView.delegate = self;
}

- (IBAction)zoomIn:(id)sender {
    MKUserLocation *userLocation = _mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (userLocation.location.coordinate, 5000, 5000);
    [_mapView setRegion:region animated:YES];
}

- (IBAction)changeMapType:(id)sender {
    if (_mapView.mapType == MKMapTypeStandard)
        _mapView.mapType = MKMapTypeSatellite;
    else
        _mapView.mapType = MKMapTypeStandard;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    _mapView.centerCoordinate =
    userLocation.location.coordinate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
