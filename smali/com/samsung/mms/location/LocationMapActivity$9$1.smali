.class Lcom/samsung/mms/location/LocationMapActivity$9$1;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

.field final synthetic val$selectedPlace:Lcom/nbi/map/data/Place;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity$9;Lcom/nbi/map/data/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->val$selectedPlace:Lcom/nbi/map/data/Place;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1861
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1866
    :cond_0
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/MapView;->getMeasuredWidth()I

    move-result v2

    .line 1867
    .local v2, mapWidth:I
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/MapView;->getMeasuredHeight()I

    move-result v1

    .line 1869
    .local v1, mapHeight:I
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4, v6, v6, v2, v1}, Lcom/nbi/map/android/MapView;->isImageReady(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1874
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v5, 0x7

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v4, v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$1600(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 1876
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$2600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v4

    if-gez v4, :cond_1

    .line 1880
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v5, v5, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    .line 1883
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1884
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1885
    .local v3, tmpImagePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->createMapImage()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$2700(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1888
    const-string v4, "extra_image_path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    :cond_2
    const-string v4, "extra_map_url"

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v5, v5, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/android/MapView;->mapToURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
    const-string v4, "extra_selected_place"

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->val$selectedPlace:Lcom/nbi/map/data/Place;

    invoke-static {v5}, Lcom/samsung/mms/location/PlaceUtils;->createSDKPlaceFromNBI(Lcom/nbi/map/data/Place;)Lcom/samsung/mms/location/Place;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/mms/location/Place;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1896
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v4, v7, v0}, Lcom/samsung/mms/location/LocationMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 1897
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v4}, Lcom/samsung/mms/location/LocationMapActivity;->finish()V

    goto/16 :goto_0

    .line 1902
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #tmpImagePath:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$9$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$9;

    iget-object v4, v4, Lcom/samsung/mms/location/LocationMapActivity$9;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v5, 0x7f0c0330

    invoke-static {v4, v5, v6}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    goto/16 :goto_0
.end method
