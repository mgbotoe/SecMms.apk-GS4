.class Lcom/android/mms/spam/SetupSpamNumberList$6;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

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
    .line 374
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v7, v7, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 376
    const v7, 0x7f0b0296

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 377
    .local v1, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v1, :cond_0

    .line 378
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 383
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b028d

    if-ne v7, v8, :cond_3

    .line 384
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    .line 385
    .local v2, checked:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_2

    .line 386
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v7

    add-int v9, v7, v5

    if-nez v2, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v9, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 388
    :cond_2
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    if-nez v2, :cond_5

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 390
    .end local v2           #checked:Z
    .end local v5           #i:I
    :cond_3
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 420
    .end local v1           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_4
    :goto_3
    return-void

    .line 388
    .restart local v1       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v2       #checked:Z
    .restart local v5       #i:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 392
    .end local v1           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v2           #checked:Z
    .end local v5           #i:I
    :cond_6
    if-nez p3, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 393
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v7}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v0

    .line 394
    .local v0, bCheck:Z
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    if-nez v0, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v7, v8}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 396
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v7, v7, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 397
    .local v3, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_key_spam_option_unknown_num"

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->notifyDataSetInvalidated()V

    goto :goto_3

    .line 394
    .end local v3           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 403
    .end local v0           #bCheck:Z
    :cond_8
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 404
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 405
    .local v4, headerViewsCount:I
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v7

    sub-int v8, p3, v4

    invoke-virtual {v7, v8}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->getItem(I)Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-result-object v6

    .line 407
    .local v6, item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 408
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 409
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v7}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v7}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 412
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v7, v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$702(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 413
    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList$6;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V
    invoke-static {v7}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1100(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto/16 :goto_3

    .line 408
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method
