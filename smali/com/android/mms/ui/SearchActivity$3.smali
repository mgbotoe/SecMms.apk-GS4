.class Lcom/android/mms/ui/SearchActivity$3;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 302
    const-string v7, "Mms/SearchActivity"

    const-string v8, "onQueryComplete"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/SearchActivity;->hideProgressDialog()V

    .line 305
    const/4 v6, 0x0

    .local v6, totalCursor:Landroid/database/Cursor;
    move-object v7, p2

    .line 308
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/mms/data/Conversation;->conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v5

    .line 310
    .local v5, threadCursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v0

    .line 311
    .local v0, SelectedSearchField:I
    if-nez v0, :cond_4

    .line 312
    new-instance v6, Landroid/database/MergeCursor;

    .end local v6           #totalCursor:Landroid/database/Cursor;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 333
    .restart local v6       #totalCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 334
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    .line 335
    const/4 v5, 0x0

    .line 339
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .local v1, cursorCount:I
    move-object v4, p2

    .line 341
    check-cast v4, Ljava/lang/String;

    .line 345
    .local v4, searchString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/mms/ui/SearchListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 347
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 348
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 350
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V
    invoke-static {v7, v6}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V

    .line 351
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/ui/SearchListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 353
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 356
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 357
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->requestFocus()Z

    .line 359
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 362
    if-lez v1, :cond_8

    .line 363
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/android/mms/MmsApp;

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v3

    .line 365
    .local v3, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v3, :cond_3

    .line 366
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v8, 0x7f0c00da

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .end local v3           #recent:Landroid/provider/SearchRecentSuggestions;
    :cond_3
    :goto_1
    return-void

    .line 315
    .end local v1           #cursorCount:I
    .end local v4           #searchString:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    .line 316
    if-eqz p3, :cond_5

    .line 317
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_5
    const/4 p3, 0x0

    .line 320
    new-instance v6, Landroid/database/MergeCursor;

    .end local v6           #totalCursor:Landroid/database/Cursor;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v6       #totalCursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 323
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 324
    if-eqz v5, :cond_7

    .line 325
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    .line 327
    :cond_7
    const/4 v5, 0x0

    .line 328
    new-instance v6, Landroid/database/MergeCursor;

    .end local v6           #totalCursor:Landroid/database/Cursor;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v6       #totalCursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 370
    .restart local v1       #cursorCount:I
    .restart local v4       #searchString:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v7

    check-cast v2, Landroid/widget/TextView;

    .line 371
    .local v2, emptyText:Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 372
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
