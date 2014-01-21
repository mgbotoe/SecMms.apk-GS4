.class Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/nbi/map/geocode/ReverseGeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseGeocodeHandler"
.end annotation


# instance fields
.field private final latitude:D

.field private final longitude:D

.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;DD)V
    .locals 0
    .parameter
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput-wide p2, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->latitude:D

    .line 1463
    iput-wide p4, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->longitude:D

    .line 1464
    return-void
.end method


# virtual methods
.method public onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1494
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestCancelled() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    return-void
.end method

.method public onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1498
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestComplete() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    return-void
.end method

.method public onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "exception"
    .parameter "request"

    .prologue
    .line 1502
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestError() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    return-void
.end method

.method public onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "percentage"
    .parameter "request"

    .prologue
    .line 1509
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestProgress() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    return-void
.end method

.method public onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1513
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestStart() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method public onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1517
    const-string v0, "ReverseGeocode"

    const-string v1, "onRequestTimeOut() Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method public onReverseGeocode(Lcom/nbi/map/geocode/ReverseGeocodeInformation;Lcom/nbi/map/geocode/ReverseGeocodeRequest;)V
    .locals 10
    .parameter "information"
    .parameter "request"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1468
    const-string v6, "ReverseGeocode"

    const-string v7, "onReverseGeocode() Called"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    invoke-interface {p1}, Lcom/nbi/map/geocode/ReverseGeocodeInformation;->getMapLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    .line 1472
    .local v0, lookupLocation:Lcom/nbi/map/data/MapLocation;
    if-eqz v0, :cond_0

    .line 1474
    iget-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->latitude:D

    invoke-virtual {v0, v6, v7}, Lcom/nbi/map/data/MapLocation;->setLatitude(D)V

    .line 1475
    iget-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->longitude:D

    invoke-virtual {v0, v6, v7}, Lcom/nbi/map/data/MapLocation;->setLongitude(D)V

    .line 1477
    new-instance v2, Lcom/nbi/map/data/Place;

    invoke-direct {v2}, Lcom/nbi/map/data/Place;-><init>()V

    .line 1478
    .local v2, newPlace:Lcom/nbi/map/data/Place;
    invoke-virtual {v2, v0}, Lcom/nbi/map/data/Place;->setLocation(Lcom/nbi/map/data/MapLocation;)V

    .line 1481
    new-instance v5, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v5, v2}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 1482
    .local v5, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual {v5, v8}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, placeDisplayTextArray:[Ljava/lang/String;
    new-instance v1, Lcom/nbi/map/android/Pin;

    const/4 v6, 0x4

    aget-object v7, v4, v9

    invoke-direct {v1, v6, v2, v7}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V

    .line 1485
    .local v1, lookupPin:Lcom/nbi/map/android/Pin;
    aget-object v6, v4, v8

    invoke-virtual {v1, v6}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    .line 1486
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I
    invoke-static {v6, v1, v9, v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$1200(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/Pin;ZZ)I

    move-result v3

    .line 1487
    .local v3, pinId:I
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    .line 1489
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    .line 1490
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    goto :goto_0
.end method
