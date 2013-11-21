//
//  KMPointsOfInterest.h
//  Map App
//
//  Created by Kelli Mohr on 11/20/13.
//  Copyright (c) 2013 Kelli Mohr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface KMPointsOfInterest : NSObject <MKAnnotation>

- (id)initWithName:(NSString*)name address:(NSString*)address coordinate:(CLLocationCoordinate2D)coordinate;
- (MKMapItem*)mapItem;

@end
