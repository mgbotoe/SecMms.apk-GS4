.class Lcom/samsung/mms/location/LocationMapActivity$2;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/nbi/search/singlesearch/SuggestionSearchListener;


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
    .line 688
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 712
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestCancelled called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 717
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestComplete called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "e"
    .parameter "request"

    .prologue
    .line 723
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestError called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "progress"
    .parameter "request"

    .prologue
    .line 728
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestProgress called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 733
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestStart called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 738
    const-string v0, "LocationMapActivity"

    const-string v1, "onRequestTimeOut called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public onSuggestionSearch(Lcom/nbi/search/singlesearch/SuggestionSearchInformation;Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V
    .locals 6
    .parameter "info"
    .parameter "request"

    .prologue
    .line 692
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getResultCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 693
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "line1"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "line2"

    aput-object v5, v0, v4

    .line 698
    .local v0, columns:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getResultCount()I

    move-result v4

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 699
    .local v2, matCur:Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-interface {p1}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getResultCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 700
    invoke-interface {p1, v1}, Lcom/nbi/search/singlesearch/SuggestionSearchInformation;->getSuggestMatch(I)Lcom/nbi/search/singlesearch/SuggestMatch;

    move-result-object v3

    .line 701
    .local v3, match:Lcom/nbi/search/singlesearch/SuggestMatch;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/search/singlesearch/SuggestMatch;->getLine1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/search/singlesearch/SuggestMatch;->getLine2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    .end local v3           #match:Lcom/nbi/search/singlesearch/SuggestMatch;
    :cond_0
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 705
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;
    invoke-static {v4, p1}, Lcom/samsung/mms/location/LocationMapActivity;->access$402(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;)Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    .line 707
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #matCur:Landroid/database/MatrixCursor;
    :cond_1
    return-void
.end method
