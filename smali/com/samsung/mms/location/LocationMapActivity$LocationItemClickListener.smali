.class Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationItemClickListener"
.end annotation


# instance fields
.field private mPlaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2021
    .local p2, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    .line 2022
    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    .line 2023
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2027
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 2035
    :goto_0
    return-void

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/data/Place;

    .line 2034
    .local v0, selectedPlace:Lcom/nbi/map/data/Place;
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V
    invoke-static {v1, v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$3200(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/data/Place;)V

    goto :goto_0
.end method
