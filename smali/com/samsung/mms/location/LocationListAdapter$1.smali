.class Lcom/samsung/mms/location/LocationListAdapter$1;
.super Ljava/lang/Object;
.source "LocationListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationListAdapter;

.field final synthetic val$currentPlaceItem:Lcom/nbi/map/data/Place;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationListAdapter;Lcom/nbi/map/data/Place;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$currentPlaceItem:Lcom/nbi/map/data/Place;

    iput-object p3, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    #getter for: Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationListAdapter;->access$000(Lcom/samsung/mms/location/LocationListAdapter;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$currentPlaceItem:Lcom/nbi/map/data/Place;

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v0

    .local v0, locationRowID:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const v3, 0x7f02021f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    #getter for: Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationListAdapter;->access$000(Lcom/samsung/mms/location/LocationListAdapter;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->deletePlace(J)Z

    .line 102
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    #getter for: Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationListAdapter;->access$100(Lcom/samsung/mms/location/LocationListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c032e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const v3, 0x7f020220

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    #getter for: Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationListAdapter;->access$000(Lcom/samsung/mms/location/LocationListAdapter;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->val$currentPlaceItem:Lcom/nbi/map/data/Place;

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    .line 109
    iget-object v2, p0, Lcom/samsung/mms/location/LocationListAdapter$1;->this$0:Lcom/samsung/mms/location/LocationListAdapter;

    #getter for: Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationListAdapter;->access$100(Lcom/samsung/mms/location/LocationListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
