.class Lcom/samsung/mms/location/LocationMapActivity$13;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/nbi/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public locationUpdated(Lcom/nbi/location/Location;)V
    .locals 13
    .parameter "location"

    .prologue
    .line 2139
    if-eqz p1, :cond_5

    .line 2141
    const-string v0, "LocationMapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationUpdated() - lat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    new-instance v1, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    .line 2144
    .local v1, center:Lcom/nbi/map/data/Coordinates;
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3300(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2146
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$2000(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$2000(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nbi/map/android/MapView;->setZoomLevel(IZ)Z

    .line 2149
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/NavigationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/location/NavigationHandler;->updateZoomButtonState()V

    .line 2150
    const-string v0, "LocationMapActivity"

    const-string v2, "Setting Zoom Level as Default"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z
    invoke-static {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3302(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 2155
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nbi/map/android/MapView;->mapShowLocation(Z)Z

    .line 2156
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$3300(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nbi/map/android/MapView;->mapUpdateLocation(Lcom/nbi/map/data/Coordinates;IZZZ)Z

    .line 2158
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2161
    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/location/LBSManager;->getCurrentBestLocation()Lcom/nbi/location/Location;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v2

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D
    invoke-static {v0, v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$3602(Lcom/samsung/mms/location/LocationMapActivity;D)D

    .line 2173
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v2

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D
    invoke-static {v0, v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$3702(Lcom/samsung/mms/location/LocationMapActivity;D)D

    .line 2177
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3800(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_4

    .line 2180
    :try_start_1
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3900(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/location/LocationListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/mms/location/LBSManager;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_1
    .catch Lcom/nbi/location/LocationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2184
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z
    invoke-static {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3802(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 2188
    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$100(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2190
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/location/PinBubbleView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2193
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nbi/map/android/MapView;->setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V

    .line 2195
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2198
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v2

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->dropPinOnMapCenter(I)V
    invoke-static {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$4000(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 2233
    .end local v1           #center:Lcom/nbi/map/data/Coordinates;
    :cond_5
    :goto_2
    return-void

    .line 2163
    .restart local v1       #center:Lcom/nbi/map/data/Coordinates;
    :catch_0
    move-exception v12

    .line 2164
    .local v12, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v12}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_0

    .line 2181
    .end local v12           #e:Lcom/nbi/location/LocationException;
    :catch_1
    move-exception v12

    .line 2182
    .restart local v12       #e:Lcom/nbi/location/LocationException;
    invoke-virtual {v12}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_1

    .line 2204
    .end local v12           #e:Lcom/nbi/location/LocationException;
    :cond_6
    const/4 v10, -0x1

    .line 2205
    .local v10, dropPinId:I
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    .line 2207
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v9

    .line 2208
    .local v9, dropPin:Lcom/nbi/map/android/Pin;
    if-eqz v9, :cond_5

    .line 2210
    invoke-virtual {v9}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v11

    .line 2211
    .local v11, dropPlace:Lcom/nbi/map/data/Place;
    if-eqz v11, :cond_5

    .line 2213
    invoke-virtual {v11}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v8

    .line 2214
    .local v8, dropLocation:Lcom/nbi/map/data/MapLocation;
    if-eqz v8, :cond_5

    .line 2216
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3600(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLatitude(D)V

    .line 2217
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3700(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLongitude(D)V

    .line 2219
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I
    invoke-static {v0, v9, v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1200(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/Pin;ZZ)I

    .line 2221
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    const-string v0, ""

    :goto_3
    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$2402(Lcom/samsung/mms/location/LocationMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2224
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3600(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3700(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v5

    const/4 v7, 0x0

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DDZ)V
    invoke-static/range {v2 .. v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$4100(Lcom/samsung/mms/location/LocationMapActivity;DDZ)V

    goto :goto_2

    .line 2221
    :cond_7
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c02ee

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onLocationError(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2131
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationError() - error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$13;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v1, 0x7f0c02ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    .line 2135
    return-void
.end method

.method public providerStateChanged(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2127
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "providerStateChanged() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    return-void
.end method
