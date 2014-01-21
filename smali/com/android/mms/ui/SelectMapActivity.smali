.class public Lcom/android/mms/ui/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# static fields
.field private static final GET_MYLOCATION:I = 0x0

.field private static final MENU_CANCEL:I = 0x65

.field private static final MENU_OK:I = 0x66

.field private static MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String; = null

.field private static final OFFSET:I = 0x64

.field private static final UPDATE_LOCATION:I = 0x1

.field private static final UPDATE_MAP_FROM_LOCATION:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarCancelButton:Landroid/widget/TextView;

.field private mActionbarDoneButton:Landroid/widget/TextView;

.field private mActionbarLayout:Landroid/widget/LinearLayout;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentLocThread:Ljava/lang/Thread;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mLocation:Ljava/lang/String;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mPickImage:Z

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchPoint:Lcom/google/android/maps/GeoPoint;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSelectMapHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "MessageLocationTempJPG.tmp"

    sput-object v0, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 80
    const-string v0, "Messaging/SelectMapActivity"

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 109
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    .line 113
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 124
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 126
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 128
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocThread:Ljava/lang/Thread;

    .line 257
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$5;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    .line 517
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$6;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 605
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$7;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 940
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMapActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->setSearchButtonState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getLocationServiceAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 3
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 678
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 679
    .local v0, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/ui/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 680
    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 664
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 660
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 16
    .parameter "location"

    .prologue
    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v14, "getFromLocationName"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 567
    :cond_0
    const/4 v13, 0x0

    .line 602
    :goto_0
    return v13

    .line 570
    :cond_1
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v2, geo:Landroid/location/Geocoder;
    const v11, 0x55d4a80

    .local v11, minLat:I
    const v9, -0x55d4a80

    .line 572
    .local v9, maxLat:I
    const v12, 0xaba9500

    .local v12, minLon:I
    const v10, -0xaba9500

    .line 574
    .local v10, maxLon:I
    const/4 v13, 0x5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 575
    .local v6, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    .line 577
    .local v8, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 578
    .local v4, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v4}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, addr:Landroid/location/Address;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_2

    .line 581
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addr:Landroid/location/Address;
    check-cast v1, Landroid/location/Address;

    .line 582
    .restart local v1       #addr:Landroid/location/Address;
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v5

    .line 583
    .local v5, lat:I
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v7

    .line 584
    .local v7, lon:I
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v13}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 585
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 586
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 587
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 588
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v5           #lat:I
    .end local v7           #lon:I
    :cond_2
    if-eqz v1, :cond_3

    .line 592
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v12, v10}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    .line 602
    .end local v1           #addr:Landroid/location/Address;
    .end local v3           #i:I
    .end local v4           #itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/4 v13, 0x1

    goto :goto_0

    .line 595
    .restart local v6       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0170

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 599
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private getLocationServiceAvailable()Z
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 15

    .prologue
    const-wide v13, 0x412e848000000000L

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "getMyLocation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v12, 0x0

    .line 464
    .local v12, networkLocationEnabled:Z
    const/4 v9, 0x0

    .line 467
    .local v9, gpsLocationEnabled:Z
    const/4 v11, 0x0

    .line 468
    .local v11, myLocation:Lcom/google/android/maps/GeoPoint;
    const/4 v10, 0x0

    .line 481
    .local v10, location:Landroid/location/Location;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v12

    .line 482
    if-eqz v12, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    .line 493
    if-eqz v9, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    if-nez v9, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "Can not use location service!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    .line 514
    :goto_2
    return-object v0

    .line 486
    :catch_0
    move-exception v6

    .line 487
    .local v6, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_0

    .line 497
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 498
    .restart local v6       #e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 507
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz v10, :cond_3

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "got location"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 510
    .local v7, geoLat:Ljava/lang/Double;
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 512
    .local v8, geoLng:Ljava/lang/Double;
    new-instance v11, Lcom/google/android/maps/GeoPoint;

    .end local v11           #myLocation:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v11, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .end local v7           #geoLat:Ljava/lang/Double;
    .end local v8           #geoLng:Ljava/lang/Double;
    .restart local v11       #myLocation:Lcom/google/android/maps/GeoPoint;
    :cond_3
    move-object v0, v11

    .line 514
    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 684
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 685
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 687
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 668
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 669
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 670
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 671
    .local v1, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .locals 5
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 701
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v4, "move to marker"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sub-int v0, p2, p1

    .line 703
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 704
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 707
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 708
    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 709
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 694
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 696
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 697
    return v3
.end method

.method private removeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 411
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 416
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 418
    :cond_2
    return-void
.end method

.method private searchLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 549
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "searchLocation"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/Log;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "empay location to search"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 559
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 561
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setSearchButtonState(I)V
    .locals 3
    .parameter "length"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    if-gtz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 310
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v0, cancelText:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040005

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 315
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 317
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0b0017

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    .line 318
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0b0019

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 321
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0b0018

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v2, v4

    .line 324
    .local v2, isLandscape:Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 355
    .end local v0           #cancelText:Ljava/lang/StringBuffer;
    .end local v1           #doneText:Ljava/lang/StringBuffer;
    .end local v2           #isLandscape:Z
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->invalidateOptionsMenu()V

    .line 359
    return-void

    .line 323
    .restart local v0       #cancelText:Ljava/lang/StringBuffer;
    .restart local v1       #doneText:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateActionBarText(Z)V
    .locals 6
    .parameter "isLandscape"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 363
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 365
    .local v1, mIsLandscape:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 395
    :cond_0
    :goto_1
    return-void

    .end local v1           #mIsLandscape:Z
    :cond_1
    move v1, v2

    .line 363
    goto :goto_0

    .line 368
    .restart local v1       #mIsLandscape:Z
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 376
    if-eqz p1, :cond_5

    .line 377
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v3, 0x7f02022c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    const v3, 0x7f02022d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 380
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 381
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateLocation"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v12, ""

    .line 716
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 718
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 719
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 721
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 723
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 724
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_2

    .line 725
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    if-nez v11, :cond_1

    .line 728
    move-object v12, v7

    .line 724
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 730
    :cond_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 731
    .local v13, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 738
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    .end local v13           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v10

    .line 739
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 741
    .end local v10           #e:Ljava/io/IOException;
    :cond_2
    return-object v12
.end method

.method private updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 23
    .parameter "point"

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "updateLocationfromGetMyLocation"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v16, ""

    .line 748
    .local v16, location:Ljava/lang/String;
    const/4 v12, 0x0

    .line 750
    .local v12, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v5, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 751
    .local v5, geoCoder:Landroid/location/Geocoder;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    .line 753
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v18

    .line 754
    .local v18, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 755
    .local v14, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v14}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 757
    const v21, 0x55d4a80

    .local v21, minLat:I
    const v19, -0x55d4a80

    .line 758
    .local v19, maxLat:I
    const v22, 0xaba9500

    .local v22, minLon:I
    const v20, -0xaba9500

    .line 760
    .local v20, maxLon:I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "location data found in updateLocationfromGetMyLocation"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    .line 764
    .local v11, addr:Landroid/location/Address;
    invoke-virtual {v11}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v15

    .line 765
    .local v15, lat:I
    invoke-virtual {v11}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v17

    .line 767
    .local v17, lon:I
    invoke-virtual {v11}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1, v6}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 768
    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 769
    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 770
    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 771
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 773
    if-eqz v11, :cond_0

    .line 774
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v5           #geoCoder:Landroid/location/Geocoder;
    .end local v11           #addr:Landroid/location/Address;
    .end local v14           #itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    .end local v15           #lat:I
    .end local v17           #lon:I
    .end local v18           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    .end local v19           #maxLat:I
    .end local v20           #maxLon:I
    .end local v21           #minLat:I
    .end local v22           #minLon:I
    :cond_0
    :goto_0
    return-object v16

    .line 777
    :catch_0
    move-exception v13

    .line 778
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected captureMap()V
    .locals 8

    .prologue
    .line 784
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "capture map"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 786
    const/4 v1, 0x0

    .line 790
    .local v1, saved:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 798
    if-nez v1, :cond_0

    .line 799
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "saved value is null!!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;->printStackTrace()V

    .line 793
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 803
    .end local v0           #e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 804
    .local v3, savedWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 806
    .local v2, savedHeight:I
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    .line 807
    .local v4, x:I
    if-gez v4, :cond_1

    .line 808
    const/4 v4, 0x0

    .line 809
    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 811
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v5, v6, 0x2

    .line 812
    .local v5, y:I
    if-gez v5, :cond_2

    .line 813
    const/4 v5, 0x0

    .line 814
    iput v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 816
    :cond_2
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    iget v7, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 859
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 860
    .local v2, result:Landroid/content/Intent;
    const-string v3, "location"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, cachePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, fullpath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v1}, Lcom/android/mms/ui/MessageUtils;->SaveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 867
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 868
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 871
    :cond_0
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 873
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 874
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 875
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    .line 876
    return-void
.end method

.method protected getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    .line 820
    const-string v11, ""

    .line 821
    .local v11, returnAddress:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v10, retAddress:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 824
    .local v7, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 825
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    .line 826
    .local v1, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    .line 829
    .local v3, lng:D
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 830
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 831
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 832
    .local v6, address:Landroid/location/Address;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v9, v5, :cond_1

    .line 833
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 834
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 838
    .end local v6           #address:Landroid/location/Address;
    .end local v9           #i:I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 839
    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 847
    :goto_1
    return-object v11

    .line 843
    :catch_0
    move-exception v8

    .line 845
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 7
    .parameter "point"

    .prologue
    .line 851
    const-string v4, ""

    .line 852
    .local v4, returnURL:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v0

    .line 853
    .local v0, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    .line 854
    .local v2, lng:D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 855
    return-object v4
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 425
    .local v0, isLandscape:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 427
    return-void

    .line 424
    .end local v0           #isLandscape:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image_location"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    .line 144
    const v2, 0x7f040076

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    .line 148
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBar()V

    .line 151
    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 152
    const v2, 0x7f0b0257

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 153
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v4}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 155
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->initMarker()Z

    .line 156
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 157
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 159
    const-string v1, "location"

    .line 160
    .local v1, serviceString:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 162
    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 164
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteEditBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v3, -0xfefeff

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SelectMapActivity$1;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    const v2, 0x7f0b0255

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/mms/ui/SelectMapActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SelectMapActivity$2;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/SelectMapActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SelectMapActivity$3;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    const v2, 0x7f0b0256

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 208
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/mms/ui/SelectMapActivity$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SelectMapActivity$4;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 1040
    const/16 v1, 0x65

    const v2, 0x7f0c017c

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 1041
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1043
    const/16 v1, 0x66

    const v2, 0x7f0c0022

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 1044
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1046
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1047
    .local v0, isLandscape:Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 1049
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 453
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 886
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on options item, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 922
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 892
    :sswitch_0
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 893
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    goto :goto_0

    .line 899
    :sswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 900
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    goto :goto_0

    .line 903
    :sswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 905
    .local v0, address:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    if-eqz v2, :cond_2

    .line 906
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->captureMap()V

    .line 910
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    .line 918
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->doFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_1

    .line 915
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 888
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 439
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 432
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 447
    :cond_0
    return-void
.end method
