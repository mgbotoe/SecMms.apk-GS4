.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String; = null

.field static final SEARCH_ALL:I = 0x0

.field static final SEARCH_MESSAGE:I = 0x2

.field private static final SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri; = null

.field private static final SEARCH_QUERY_TOKEN:I = 0x1fa4

.field static final SEARCH_SENDER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/SearchActivity"


# instance fields
.field private final ViewKeyListener:Landroid/view/View$OnKeyListener;

.field public mBubbleStartIdx:I

.field mBubbleTitle:Ljava/lang/String;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

.field mSearchString:Ljava/lang/String;

.field public mThreadStartIdx:I

.field mThreadTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "messages/totalsearch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 79
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 392
    new-instance v0, Lcom/android/mms/ui/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$5;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 562
    new-instance v0, Lcom/android/mms/ui/SearchActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$8;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SearchActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 491
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, searchString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    .line 505
    :goto_0
    return-object v2

    .line 495
    :cond_0
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 500
    .local v1, searchUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 501
    const-string v2, "pattern"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    .line 505
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 509
    if-nez p1, :cond_0

    const-string v0, ""

    .line 510
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSeparatorInfo(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 598
    const/4 v3, 0x0

    .line 599
    .local v3, thread_count:I
    const/4 v2, 0x0

    .line 601
    .local v2, message_count:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 603
    .local v1, cursorCount:I
    if-gtz v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 608
    :cond_1
    const-string v4, "listorder"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 609
    .local v0, ListOrder:I
    if-nez v0, :cond_7

    .line 610
    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    if-ne v4, v7, :cond_2

    .line 611
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 612
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSearchThreadStratId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 622
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 625
    .end local v0           #ListOrder:I
    :cond_4
    if-lez v3, :cond_5

    .line 626
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    .line 628
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mThreadTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_5
    if-lez v2, :cond_6

    .line 632
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0001

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    .line 634
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBubbleTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget v5, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/ui/SearchListAdapter;->setThreadInfo(JLjava/lang/String;)V

    .line 638
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget v5, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/ui/SearchListAdapter;->setBubbleInfo(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 615
    .restart local v0       #ListOrder:I
    :cond_7
    if-ne v0, v8, :cond_3

    .line 616
    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    if-ne v4, v7, :cond_8

    .line 617
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 618
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSearchMessageStratIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 516
    const-string v0, "Mms/SearchActivity"

    const-string v1, "show progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 9
    .parameter "_searchString"

    .prologue
    const/16 v1, 0x1fa4

    .line 536
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "Mms/SearchActivity"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, searchPattern:Ljava/lang/String;
    const-string v0, "Mms/SearchActivity"

    const-string v4, "startQuery"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "pattern"

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 549
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "thread_id<>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->showProgressDialog()V

    goto :goto_0
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SearchActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SearchActivity$7;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    const-string v0, "Mms/SearchActivity"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v7, 0x42

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 250
    const-string v3, "Mms/SearchActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const v3, 0x7f040071

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setContentView(I)V

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    .line 260
    iput v5, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 261
    iput v5, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 269
    .local v1, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    new-instance v3, Lcom/android/mms/ui/SearchListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SearchListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    .line 286
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SearchListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V

    .line 288
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 293
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    if-eqz v2, :cond_2

    .line 294
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 300
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 377
    const-string v3, ""

    const v4, 0x7f0c017a

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SearchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 378
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/mms/ui/SearchActivity$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SearchActivity$4;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 388
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    return-void

    .line 295
    :cond_2
    if-eqz v1, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 642
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 644
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 481
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    .line 483
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 583
    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    .line 588
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 589
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 650
    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() : item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 659
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 654
    :pswitch_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    .line 655
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->finish()V

    .line 656
    const/4 v0, 0x1

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 426
    const-string v2, "Mms/SearchActivity"

    const-string v3, "onStart()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 430
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 433
    :cond_0
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 434
    .local v0, emptyText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 435
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 440
    .local v1, searchUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SearchActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/SearchActivity$6;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 464
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 469
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->hideProgressDialog()V

    .line 475
    return-void
.end method
