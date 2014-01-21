.class public Lcom/samsung/mms/location/FavoritePlacesList;
.super Landroid/app/ListActivity;
.source "FavoritePlacesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/FavoritePlacesList$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;
    }
.end annotation


# static fields
.field protected static final CONTEXT_DELETE:I = 0x2

.field protected static final CONTEXT_VIEW:I = 0x1

.field private static final ID_DELETE_CONVERSATION:I = 0x1

.field private static final REQUEST_CODE_MAP_ACTIVITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentPlacesList"


# instance fields
.field private favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private mEmptyList:Landroid/view/View;

.field mHistory:Landroid/widget/ListView;

.field private mNoNetworkDialog:Landroid/app/AlertDialog;

.field private mbHasInitialized:Z

.field private recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 226
    return-void
.end method

.method private refreshAdapter(Z)V
    .locals 6
    .parameter "refreshView"

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v3, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v2

    .line 125
    .local v2, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    new-instance v0, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v3, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v0, p0, v3, v2, v5}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 130
    .local v0, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;

    invoke-direct {v4, p0, v2}, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;Ljava/util/Vector;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;

    invoke-direct {v4, p0, v2}, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;Ljava/util/Vector;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 133
    iget-object v3, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mEmptyList:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .end local v0           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v3, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mEmptyList:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mEmptyList:Landroid/view/View;

    const v4, 0x7f0b0112

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    .local v1, mEmptyTextView:Landroid/widget/TextView;
    const v3, 0x7f0c00ef

    invoke-virtual {p0, v3}, Lcom/samsung/mms/location/FavoritePlacesList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 92
    if-ne p2, v0, :cond_0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    const-string v0, "RecentPlacesList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0, v0, p3}, Lcom/samsung/mms/location/FavoritePlacesList;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->finish()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f040036

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LBSManager;->init(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    .line 50
    iget-boolean v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v1, Lcom/samsung/mms/location/FavoritesDBAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/FavoritesDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 54
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 57
    new-instance v1, Lcom/samsung/mms/location/RecentsDBAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/RecentsDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 58
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 59
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mEmptyList:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 77
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 78
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->destroy()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 85
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, retVal:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/FavoritePlacesList;->finish()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/FavoritePlacesList;->refreshAdapter(Z)V

    .line 68
    return-void
.end method

.method public showNoInternetDialog()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0318

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0319

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/FavoritePlacesList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c031a

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/FavoritePlacesList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$2;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/FavoritePlacesList$2;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c031b

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/FavoritePlacesList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$1;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/FavoritePlacesList$1;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 294
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
