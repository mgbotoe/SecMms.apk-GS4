.class Lcom/samsung/mms/location/LocationMapActivity$1;
.super Landroid/os/Handler;
.source "LocationMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DISTANCE_FROM_CENTER:I

.field private final POST_DELAY:I

.field private distanceFromCenter:I

.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xc8

    .line 265
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 266
    iput v1, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->DISTANCE_FROM_CENTER:I

    .line 267
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->POST_DELAY:I

    .line 269
    iput v1, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->distanceFromCenter:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 276
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v2

    .local v2, currentPinId:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 278
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 279
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v9}, Lcom/samsung/mms/location/LocationMapActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 282
    const/high16 v9, 0x4348

    iget v10, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->distanceFromCenter:I

    .line 286
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    .line 287
    .local v1, currentLocation:Lcom/nbi/map/data/MapLocation;
    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v11

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    .line 289
    .local v0, coords:Lcom/nbi/map/data/Coordinates;
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/nbi/map/android/MapView;->convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;

    move-result-object v8

    .line 290
    .local v8, pinPosition:Lcom/nbi/map/data/Point;
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8}, Lcom/nbi/map/data/Point;->getX()I

    move-result v10

    sub-int v4, v9, v10

    .line 291
    .local v4, distX:I
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8}, Lcom/nbi/map/data/Point;->getY()I

    move-result v10

    sub-int v5, v9, v10

    .line 292
    .local v5, distY:I
    mul-int v9, v4, v4

    mul-int v10, v5, v5

    add-int v6, v9, v10

    .line 293
    .local v6, distanceSqr:I
    iget v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->distanceFromCenter:I

    iget v10, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->distanceFromCenter:I

    mul-int v3, v9, v10

    .line 295
    .local v3, dfcSqr:I
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$100(Lcom/samsung/mms/location/LocationMapActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    if-ge v6, v3, :cond_2

    .line 297
    :cond_0
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->deselectAllPins()V

    .line 298
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 300
    const-string v9, "LocationMapActivity"

    const-string v10, "mapViewRedrawHandler: Error setting pin"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/samsung/mms/location/LocationMapActivity;->access$200(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/samsung/mms/location/LocationMapActivity$1$1;

    invoke-direct {v10, p0}, Lcom/samsung/mms/location/LocationMapActivity$1$1;-><init>(Lcom/samsung/mms/location/LocationMapActivity$1;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    .end local v0           #coords:Lcom/nbi/map/data/Coordinates;
    .end local v1           #currentLocation:Lcom/nbi/map/data/MapLocation;
    .end local v2           #currentPinId:I
    .end local v3           #dfcSqr:I
    .end local v4           #distX:I
    .end local v5           #distY:I
    .end local v6           #distanceSqr:I
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #pinPosition:Lcom/nbi/map/data/Point;
    :cond_2
    return-void
.end method
