.class Lcom/android/mms/spam/SetupSpamKeywordList$8;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 297
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v5, v5, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v5, v6, :cond_6

    .line 299
    const v5, 0x7f0b0296

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 300
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    const v8, 0x7f0b028d

    if-ne v5, v8, :cond_3

    .line 307
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 308
    .local v1, checked:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v8

    sub-int/2addr v5, v8

    if-ge v3, v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v5

    add-int v9, v5, v3

    if-nez v1, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v8, v9, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 309
    goto :goto_1

    .line 311
    :cond_2
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 313
    .end local v1           #checked:Z
    .end local v3           #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    .line 331
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_4
    :goto_3
    return-void

    .restart local v0       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v1       #checked:Z
    .restart local v3       #i:I
    :cond_5
    move v6, v7

    .line 311
    goto :goto_2

    .line 314
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #checked:Z
    .end local v3           #i:I
    :cond_6
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget v5, v5, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v5, :cond_4

    .line 316
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 317
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 318
    .local v2, headerViewsCount:I
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v5

    sub-int v6, p3, v2

    invoke-virtual {v5, v6}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v4

    .line 320
    .local v4, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 321
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 322
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 323
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v5, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$302(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 324
    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList$8;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordList;->callMatchCriteriaToEditNum()V
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    goto :goto_3

    .line 321
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method
