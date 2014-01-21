.class Lcom/samsung/mms/location/LocationMapActivity$9;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1767
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "v"

    .prologue
    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 1913
    :goto_0
    return-void

    .line 1777
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v15

    .line 1778
    .local v15, selectedPinID:I
    if-ltz v15, :cond_1

    const/4 v8, 0x1

    .line 1781
    .local v8, isSelectedPin:Z
    :goto_1
    if-gez v15, :cond_2

    .line 1783
    const/4 v10, -0x1

    .line 1784
    .local v10, mapPinID:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 1785
    move v15, v10

    goto :goto_2

    .line 1778
    .end local v8           #isSelectedPin:Z
    .end local v10           #mapPinID:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1790
    .restart local v8       #isSelectedPin:Z
    :cond_2
    if-ltz v15, :cond_a

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v11

    .line 1794
    .local v11, pin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v11}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v16

    .line 1795
    .local v16, selectedPlace:Lcom/nbi/map/data/Place;
    invoke-virtual/range {v16 .. v16}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v9

    .line 1796
    .local v9, location:Lcom/nbi/map/data/MapLocation;
    new-instance v17, Lcom/samsung/mms/location/PlaceFormatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v4

    .line 1798
    .local v4, addressLines:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$2000(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$2500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$2500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->isRequestInProgress()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$2500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->startRequest()V

    .line 1808
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c02e8

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    goto/16 :goto_0

    .line 1813
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "extra_contact_name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "extra_contact_name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/nbi/map/data/Place;->setName(Ljava/lang/String;)V

    .line 1819
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    .line 1821
    new-instance v12, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v9}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v9}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v17

    move-wide/from16 v2, v19

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    .line 1822
    .local v12, pinCoords:Lcom/nbi/map/data/Coordinates;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/nbi/map/android/MapView;->convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;

    move-result-object v13

    .line 1824
    .local v13, pinPoint:Lcom/nbi/map/data/Point;
    invoke-virtual {v13}, Lcom/nbi/map/data/Point;->getX()I

    move-result v17

    if-ltz v17, :cond_9

    invoke-virtual {v13}, Lcom/nbi/map/data/Point;->getX()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v18 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nbi/map/android/MapView;->getWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    invoke-virtual {v13}, Lcom/nbi/map/data/Point;->getY()I

    move-result v17

    if-ltz v17, :cond_9

    invoke-virtual {v13}, Lcom/nbi/map/data/Point;->getY()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v18 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nbi/map/android/MapView;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    const/4 v7, 0x1

    .line 1826
    .local v7, isPinOnMap:Z
    :goto_3
    if-nez v7, :cond_6

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/nbi/map/android/MapView;->setMapCenter(Lcom/nbi/map/data/Coordinates;Z)V

    .line 1831
    :cond_6
    if-nez v8, :cond_7

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    .line 1837
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/nbi/map/android/MapView;->mapShowLocation(Z)Z

    .line 1842
    new-instance v14, Lcom/samsung/mms/location/PlaceFormatter;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 1846
    .local v14, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual {v14}, Lcom/samsung/mms/location/PlaceFormatter;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1849
    const-string v17, "Address"

    invoke-virtual/range {v16 .. v17}, Lcom/nbi/map/data/Place;->setName(Ljava/lang/String;)V

    .line 1853
    :cond_8
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 1855
    .local v5, imageCaptureHandler:Landroid/os/Handler;
    new-instance v6, Lcom/samsung/mms/location/LocationMapActivity$9$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lcom/samsung/mms/location/LocationMapActivity$9$1;-><init>(Lcom/samsung/mms/location/LocationMapActivity$9;Lcom/nbi/map/data/Place;)V

    .line 1906
    .local v6, imageCaptureRunnable:Ljava/lang/Runnable;
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1824
    .end local v5           #imageCaptureHandler:Landroid/os/Handler;
    .end local v6           #imageCaptureRunnable:Ljava/lang/Runnable;
    .end local v7           #isPinOnMap:Z
    .end local v14           #placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 1911
    .end local v4           #addressLines:[Ljava/lang/String;
    .end local v9           #location:Lcom/nbi/map/data/MapLocation;
    .end local v11           #pin:Lcom/nbi/map/android/Pin;
    .end local v12           #pinCoords:Lcom/nbi/map/data/Coordinates;
    .end local v13           #pinPoint:Lcom/nbi/map/data/Point;
    .end local v16           #selectedPlace:Lcom/nbi/map/data/Place;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c02e7

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    goto/16 :goto_0
.end method
