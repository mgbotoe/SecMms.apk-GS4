.class Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Lcom/nbi/search/singlesearch/SingleSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacesSearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/SearchHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/location/SearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    return-void
.end method


# virtual methods
.method public onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 408
    const-string v0, "SearchHandler"

    const-string v1, "onRequestCancelled called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/samsung/mms/location/SearchHandler;->access$302(Lcom/samsung/mms/location/SearchHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 411
    return-void
.end method

.method public onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 415
    const-string v0, "SearchHandler"

    const-string v1, "onRequestComplete called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "e"
    .parameter "request"

    .prologue
    .line 425
    const-string v0, "SearchHandler"

    const-string v1, "onRequestError called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 428
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/samsung/mms/location/SearchHandler;->access$302(Lcom/samsung/mms/location/SearchHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/nbi/common/NBIException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    return-void
.end method

.method public onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "percentage"
    .parameter "request"

    .prologue
    .line 438
    const-string v0, "SearchHandler"

    const-string v1, "onRequestProgress called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 443
    const-string v0, "SearchHandler"

    const-string v1, "onRequestStart called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 449
    const-string v0, "SearchHandler"

    const-string v1, "onRequestTimeOut called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 452
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/samsung/mms/location/SearchHandler;->access$302(Lcom/samsung/mms/location/SearchHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0240

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method

.method public onSingleSearch(Lcom/nbi/search/singlesearch/SingleSearchInformation;Lcom/nbi/search/singlesearch/SingleSearchRequest;)V
    .locals 8
    .parameter "info"
    .parameter "request"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 372
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 374
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/samsung/mms/location/SearchHandler;->access$302(Lcom/samsung/mms/location/SearchHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 376
    :cond_0
    const-string v2, "SearchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleSearch result count is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v3, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchString:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/mms/location/SearchHandler;->access$500(Lcom/samsung/mms/location/SearchHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/SearchHandler;->displayNoResultsDialog(Ljava/lang/String;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    new-instance v3, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, mPlace:Lcom/nbi/map/data/Place;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-interface {p1, v0}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getPOI(I)Lcom/nbi/map/data/POI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/POI;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 393
    :cond_3
    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 394
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v3, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nbi/map/data/Place;

    invoke-interface {v3, v2}, Lcom/samsung/mms/location/SearchHandlerListener;->onPlaceReceived(Lcom/nbi/map/data/Place;)V

    goto :goto_0

    .line 397
    :cond_4
    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 398
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SingleSearchInformation;->getResultCount()I

    move-result v3

    invoke-interface {v2, v3, v5}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 400
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v4, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v4, v4, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v5, v5, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v6, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v6, v6, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler$PlacesSearchListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v2, v2, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
