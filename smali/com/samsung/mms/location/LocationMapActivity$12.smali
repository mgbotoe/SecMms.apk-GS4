.class Lcom/samsung/mms/location/LocationMapActivity$12;
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
    .line 1980
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    .line 1983
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v4}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1985
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v4}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v2

    .line 1991
    .local v2, pinNumber:I
    if-gez v2, :cond_2

    .line 1992
    const/4 v0, -0x1

    .line 1993
    .local v0, mapPinID:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v0

    if-eq v0, v5, :cond_2

    if-ne v2, v5, :cond_2

    .line 1994
    move v2, v0

    goto :goto_1

    .line 1999
    .end local v0           #mapPinID:I
    :cond_2
    if-ltz v2, :cond_0

    .line 2002
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v1

    .line 2003
    .local v1, pin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v3

    .line 2006
    .local v3, selectedPlace:Lcom/nbi/map/data/Place;
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinTouched(Lcom/nbi/map/android/MapView;IZ)Z

    .line 2009
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$12;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-static {v4, v3}, Lcom/samsung/mms/location/LocationUtils;->startVzwNavigate(Landroid/app/Activity;Lcom/nbi/map/data/Place;)V

    goto :goto_0
.end method
