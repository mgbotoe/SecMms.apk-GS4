.class public Lcom/samsung/mms/ui/ConversationListRestore;
.super Landroid/app/ListActivity;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    }
.end annotation


# static fields
.field public static final MENU_RESTORE_CANCEL:I = 0x2

.field public static final MENU_RESTORE_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListRestore"


# instance fields
.field private addressesSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItem:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

.field private mConvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private onSelectAllClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    .line 70
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    .line 77
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 220
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/ConversationListRestore$1;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 239
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/ConversationListRestore$2;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->onSelectAllClick:Landroid/view/View$OnClickListener;

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/ConversationListRestore;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/ConversationListRestore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore;->setAllChecked(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->updateCheckedMsgCount()V

    return-void
.end method

.method private createConversationList(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    const-string v2, ""

    .line 495
    .local v2, address:Ljava/lang/String;
    const-string v4, ""

    .line 496
    .local v4, text:Ljava/lang/String;
    const/4 v5, 0x0

    .line 497
    .local v5, readCount:I
    const/4 v6, 0x0

    .line 499
    .local v6, totalCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 500
    if-nez v7, :cond_2

    .line 501
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 502
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v2

    .line 506
    :cond_0
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v5

    .line 508
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v6

    .line 510
    iget-object v10, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "file_date"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 512
    :cond_2
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 513
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, msgAddress:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_4

    .line 516
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 517
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v2

    .line 521
    :cond_3
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v5

    .line 523
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v6

    .line 525
    iget-object v10, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "file_date"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 513
    .end local v9           #msgAddress:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 533
    .end local v8           #j:I
    :cond_6
    return-void
.end method

.method private getIds()[J
    .locals 5

    .prologue
    .line 438
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 440
    .local v1, threadIds:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 442
    const-string v3, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return-object v1
.end method

.method private initListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 355
    return-void
.end method

.method private setAllChecked(Z)V
    .locals 4
    .parameter "set"

    .prologue
    .line 382
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 383
    .local v1, limit:I
    :goto_0
    if-nez v1, :cond_2

    .line 384
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    .line 391
    return-void

    .line 382
    .end local v1           #limit:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 386
    .restart local v1       #limit:I
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 387
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCheckedMsgCount()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public getEmptyScreenVisible()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public newArrayFromSelection(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "getSelected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v2, newArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    .line 360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 361
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 360
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_4
    if-eqz p1, :cond_5

    .line 376
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 378
    :cond_5
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    const-string v0, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configurationChanged(),newConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    .line 126
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getEmptyScreenVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->setContentView(I)V

    .line 87
    iput-object p0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionbar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    .line 95
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    const v1, 0x7f0b00fb

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    const v1, 0x7f0c0393

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->finish()V

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    .line 107
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->createConversationList(Ljava/util/ArrayList;)V

    .line 108
    new-instance v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    .line 109
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->initListView()V

    .line 110
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->onSelectAllClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 113
    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    .line 114
    const v1, 0x7f0b00fd

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    .line 115
    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->clear()V

    .line 143
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 159
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->cancel(Z)Z

    .line 165
    :cond_5
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 170
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "file_path"

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "address"

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address of conv selected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/ConversationListRestore;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 202
    .local v0, itemId:I
    const-string v2, "Mms/ConversationListRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sparse-switch v0, :sswitch_data_0

    .line 217
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 206
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->startRestoreOperation()V

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->finish()V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    const-string v0, "Mms/ConversationListRestore"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 181
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    .line 182
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 184
    const v0, 0x7f0c0278

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    .line 185
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 187
    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 197
    :goto_0
    return v3

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->finish()V

    .line 490
    return-void
.end method

.method public startRestoreOperation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 448
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 449
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 450
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 454
    return-void
.end method
