.class public Lcom/samsung/mms/location/NavigationHandler;
.super Ljava/lang/Object;
.source "NavigationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationHandler"


# instance fields
.field private btnCenterMap:Landroid/widget/Button;

.field private btnZoomIn:Landroid/widget/Button;

.field private btnZoomOut:Landroid/widget/Button;

.field private centerMapListener:Landroid/view/View$OnClickListener;

.field private mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

.field private mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

.field private mMapView:Lcom/nbi/map/android/MapView;

.field private zoomInListener:Landroid/view/View$OnClickListener;

.field private zoomOutListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/MapView;Lcom/nbi/map/android/MapConfiguration;)V
    .locals 1
    .parameter "mainActivity"
    .parameter "mapView"
    .parameter "mapConfiguration"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    .line 25
    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnCenterMap:Landroid/widget/Button;

    .line 81
    new-instance v0, Lcom/samsung/mms/location/NavigationHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/NavigationHandler$1;-><init>(Lcom/samsung/mms/location/NavigationHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->zoomOutListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/samsung/mms/location/NavigationHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/NavigationHandler$2;-><init>(Lcom/samsung/mms/location/NavigationHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->zoomInListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/samsung/mms/location/NavigationHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/NavigationHandler$3;-><init>(Lcom/samsung/mms/location/NavigationHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->centerMapListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    .line 31
    iput-object p2, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 32
    iput-object p3, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    .line 35
    invoke-direct {p0}, Lcom/samsung/mms/location/NavigationHandler;->initializeNavigationButtons()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/NavigationHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/NavigationHandler;->performMapZoom(I)V

    return-void
.end method

.method private initializeNavigationButtons()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    const v1, 0x7f0b0149

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    const v1, 0x7f0b014e

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnCenterMap:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->zoomOutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->zoomInListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnCenterMap:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->centerMapListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method private performMapZoom(I)V
    .locals 4
    .parameter "newZoomLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapConfiguration;->getMaximumZoomLevel()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;

    if-eqz v1, :cond_1

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/nbi/map/android/MapView;->setZoomLevel(IZ)Z

    .line 190
    const-string v1, "ZoomLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Zoom Level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapConfiguration;->getMinimumZoomLevel()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "NavigationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performMapZoom() - zoom level out of bounds, level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler;->btnCenterMap:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;

    .line 207
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 208
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->mMapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    .line 209
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomOut:Landroid/widget/Button;

    .line 210
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnZoomIn:Landroid/widget/Button;

    .line 211
    iput-object v1, p0, Lcom/samsung/mms/location/NavigationHandler;->btnCenterMap:Landroid/widget/Button;

    .line 212
    return-void
.end method

.method public updateZoomButtonState()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
