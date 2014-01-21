.class public Lcom/samsung/mms/location/SearchHandler;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;,
        Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;,
        Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/SearchHandler$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;
    }
.end annotation


# static fields
.field protected static final SINGLE_SEARCH:I = 0x2

.field protected static final SINGLE_SUB_SEARCH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SearchHandler"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mCoords:Lcom/nbi/map/data/Coordinates;

.field protected mListView:Landroid/widget/ListView;

.field protected mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field protected mMapView:Lcom/nbi/map/android/MapView;

.field private mPlacesSearchListener:Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;

.field protected mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

.field protected mSearchRequest:Lcom/nbi/common/NBIRequest;

.field protected mSearchResultPlaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;

.field private mSearchingDialog:Landroid/app/ProgressDialog;

.field private final mShowFailedList:Z

.field private final searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V
    .locals 3
    .parameter "activity"
    .parameter "showFailedList"
    .parameter "listView"
    .parameter "mapView"
    .parameter "locationDBAdapter"
    .parameter "searchHandlerListener"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    .line 67
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 68
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 69
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    .line 70
    new-instance v0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mPlacesSearchListener:Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;

    .line 71
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchString:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mCoords:Lcom/nbi/map/data/Coordinates;

    .line 73
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 74
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    .line 75
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    .line 171
    new-instance v0, Lcom/samsung/mms/location/SearchHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/SearchHandler$1;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 84
    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p3, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    .line 86
    iput-object p4, p0, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 87
    iput-object p5, p0, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 88
    iput-object p6, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    .line 89
    iput-boolean p2, p0, Lcom/samsung/mms/location/SearchHandler;->mShowFailedList:Z

    .line 92
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/mms/location/SearchHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Landroid/content/Context;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/samsung/mms/location/SearchHandler;->getNoResultsVector(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/mms/location/SearchHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method private getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoResultsVector(Landroid/content/Context;)Ljava/util/Vector;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 298
    .local v0, objects:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 299
    return-object v0
.end method


# virtual methods
.method protected dismissSearchDialog()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    :cond_0
    return-void
.end method

.method public displayNoResultsDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "searchToken"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0402

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, formatString:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .end local v1           #formatString:Ljava/lang/String;
    .local v2, noResultsString:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c030d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    const v3, 0x7f0c004f

    new-instance v4, Lcom/samsung/mms/location/SearchHandler$2;

    invoke-direct {v4, p0}, Lcom/samsung/mms/location/SearchHandler$2;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    return-void

    .line 351
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v2           #noResultsString:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0403

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #noResultsString:Ljava/lang/String;
    goto :goto_0
.end method

.method public displayNoSearches(Z)V
    .locals 3
    .parameter "isAddress"

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/samsung/mms/location/SearchHandler;->mShowFailedList:Z

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {v1, v2, v2}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 290
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const v1, 0x7f0c02df

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, fialedMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;

    invoke-direct {v2, p0, v0}, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;-><init>(Lcom/samsung/mms/location/SearchHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 290
    .end local v0           #fialedMessage:Ljava/lang/String;
    :cond_1
    const v1, 0x7f0c02e0

    goto :goto_1
.end method

.method protected performSingleSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;I)V
    .locals 9
    .parameter "searchType"
    .parameter "searchString"
    .parameter "coords"
    .parameter "suggestionSearchInfo"
    .parameter "singleSubSearchIndex"

    .prologue
    const/16 v5, 0xa

    const/4 v8, 0x1

    const/4 v6, 0x2

    .line 106
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_4

    invoke-interface {p4}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getResultCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 108
    :cond_1
    iput-object p2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchString:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/samsung/mms/location/SearchHandler;->mCoords:Lcom/nbi/map/data/Coordinates;

    .line 110
    if-ne p1, v6, :cond_3

    .line 112
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/SearchHandler;->getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;

    move-result-object v1

    .line 113
    .local v1, nbiContext:Lcom/nbi/common/NBIContext;
    if-eqz v1, :cond_2

    .line 114
    new-instance v0, Lcom/nbi/search/singlesearch/SingleSearchRequest;

    new-instance v3, Lcom/nbi/map/data/SearchRegion;

    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mCoords:Lcom/nbi/map/data/Coordinates;

    invoke-direct {v3, v2}, Lcom/nbi/map/data/SearchRegion;-><init>(Lcom/nbi/map/data/Coordinates;)V

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/SearchHandler;->mPlacesSearchListener:Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/nbi/search/singlesearch/SingleSearchRequest;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;[Ljava/lang/String;IILcom/nbi/search/singlesearch/SingleSearchListener;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 117
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->startRequest()V

    .line 136
    .end local v1           #nbiContext:Lcom/nbi/common/NBIContext;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0401

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    .line 137
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    :goto_1
    return-void

    .line 120
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 121
    if-eqz p4, :cond_2

    .line 122
    invoke-interface {p4, p5}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getSuggestMatch(I)Lcom/nbi/search/singlesearch/SuggestMatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestMatch;->getLine1()Ljava/lang/String;

    move-result-object p2

    .line 123
    const-string v0, "SearchHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SINGLE_SUB_SEARCH searchString value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "SearchHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SINGLE_SUB_SEARCH triggered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/SearchHandler;->getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;

    move-result-object v1

    .line 127
    .restart local v1       #nbiContext:Lcom/nbi/common/NBIContext;
    if-eqz v1, :cond_2

    .line 128
    new-instance v0, Lcom/nbi/search/singlesearch/SingleSearchRequest;

    new-instance v4, Lcom/nbi/map/data/SearchRegion;

    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mCoords:Lcom/nbi/map/data/Coordinates;

    invoke-direct {v4, v2}, Lcom/nbi/map/data/SearchRegion;-><init>(Lcom/nbi/map/data/Coordinates;)V

    iget-object v7, p0, Lcom/samsung/mms/location/SearchHandler;->mPlacesSearchListener:Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;

    move-object v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/nbi/search/singlesearch/SingleSearchRequest;-><init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;ILcom/nbi/map/data/SearchRegion;IILcom/nbi/search/singlesearch/SingleSearchListener;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 131
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->startRequest()V

    goto/16 :goto_0

    .line 141
    .end local v1           #nbiContext:Lcom/nbi/common/NBIContext;
    :cond_4
    const-string v0, "SearchHandler"

    const-string v2, "performSearch() - no search term provided"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
