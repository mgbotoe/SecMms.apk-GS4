.class Lcom/samsung/mms/location/LocationMapActivity$11;
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
    .line 1951
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1954
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$600(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v0

    .line 1956
    .local v0, favoritePlaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    new-instance v1, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v2}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$600(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 1961
    .local v1, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1962
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v3, v4, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1963
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v3, v4, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1964
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v3, 0x3

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1600(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 1966
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f02007c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1967
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3000(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0200cb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1973
    .end local v1           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$11;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v3, 0x7f0c02e5

    invoke-static {v2, v3, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    .line 1971
    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
