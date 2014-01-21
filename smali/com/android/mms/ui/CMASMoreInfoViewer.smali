.class public Lcom/android/mms/ui/CMASMoreInfoViewer;
.super Landroid/widget/FrameLayout;
.source "CMASMoreInfoViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field static final SELECTION_SMS_CMAS:Ljava/lang/String; = "sms._id = sms_id AND cmas.thread_id = ?"

.field private static final TAG:Ljava/lang/String; = "CMASMoreInfo"


# instance fields
.field private cmas_certainity_tv:Landroid/widget/TextView;

.field private cmas_certainity_value_tv:Landroid/widget/TextView;

.field private cmas_cmae_category_tv:Landroid/widget/TextView;

.field private cmas_cmae_category_value_tv:Landroid/widget/TextView;

.field private cmas_msg_id_tv:Landroid/widget/TextView;

.field private cmas_msg_id_value_tv:Landroid/widget/TextView;

.field private cmas_response_type_tv:Landroid/widget/TextView;

.field private cmas_response_type_value_tv:Landroid/widget/TextView;

.field private cmas_service_category_broadcast_tv:Landroid/widget/TextView;

.field private cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

.field private cmas_severity_tv:Landroid/widget/TextView;

.field private cmas_severity_value_tv:Landroid/widget/TextView;

.field private cmas_title_value_tv:Landroid/widget/TextView;

.field private cmas_urgency_tv:Landroid/widget/TextView;

.field private cmas_urgency_value_tv:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 12
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 429
    const/4 v1, 0x1

    .line 431
    .local v1, createThread:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    .line 439
    const-string v6, "CMASMoreInfo"

    const-string v7, "initActivityState"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v6, "recipients"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, recipients:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v9}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 469
    .end local v3           #recipients:Ljava/lang/String;
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v6, "thread_id"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 450
    .local v4, threadId:J
    cmp-long v6, v4, v10

    if-lez v6, :cond_2

    .line 451
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 455
    .local v2, intentData:Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 457
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v8, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 460
    :cond_3
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 462
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 465
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0
.end method

.method private CMASMoreInfoInitResourceRefs()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "CMASMoreInfo"

    const-string v1, "initResources"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_tv:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_tv:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_tv:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_tv:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_tv:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_tv:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_tv:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    const v1, 0x7f0c01bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 613
    const-string v2, "CMASMoreInfo"

    const-string v3, "createIntent"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 617
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 618
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "CMASMoreInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent Uri for threadId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v0, "CMASMoreInfo"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startMsgListQuery()V
    .locals 11

    .prologue
    const/16 v4, 0x2537

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    .line 511
    .local v9, threadId:J
    sget-object v0, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 513
    .local v3, conversationUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 515
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v0, "CMASMoreInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-nez v3, :cond_0

    .line 533
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->cancelOperation(I)V

    .line 525
    :try_start_0
    const-string v0, "CMASMoreInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery startQuery for conversationUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v5, "sms._id = sms_id AND cmas.thread_id = ?"

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v8

    .line 531
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public CMASMoreInfoInitialize(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 410
    const-string v3, "CMASMoreInfo"

    const-string v4, "intialize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 413
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 415
    const-string v3, "CMASMoreInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize: savedInstanceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mConversation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 421
    .local v1, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 425
    :cond_0
    return-void
.end method

.method public CMASMoreInfoLoadMessageContent()V
    .locals 2

    .prologue
    .line 478
    const-string v0, "CMASMoreInfo"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->startMsgListQuery()V

    .line 480
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setMessageFont()V

    .line 481
    return-void
.end method

.method public CMASMoreInfoSetData(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    .line 181
    const-string v11, "CMASMoreInfo"

    const-string v12, "CMASMoreInfoSetData"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/16 v11, 0xe

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 184
    .local v4, msgId:J
    const/16 v11, 0x9

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 185
    .local v0, msgCategory:I
    const/16 v11, 0x8

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 186
    .local v7, msgServiceCategory:I
    const/16 v11, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 187
    .local v6, msgResponseType:I
    const/16 v11, 0xb

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 188
    .local v8, msgSeverity:I
    const/16 v11, 0xc

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 189
    .local v10, msgUrgency:I
    const/16 v11, 0xd

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 191
    .local v1, msgCertainity:I
    const/4 v11, 0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, msgText:Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 194
    .local v2, msgDate:J
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "msgId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "string format"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "msgText "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgServiceCategory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgCategory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgDate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgResponseType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgSeverity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgUrgency "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgCertainity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01bd

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    sparse-switch v7, :sswitch_data_0

    .line 244
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 245
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 304
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 309
    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 346
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_2
    packed-switch v8, :pswitch_data_2

    .line 363
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 368
    :goto_3
    packed-switch v10, :pswitch_data_3

    .line 382
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :goto_4
    packed-switch v1, :pswitch_data_4

    .line 399
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :goto_5
    return-void

    .line 211
    :sswitch_0
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01c5

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 217
    :sswitch_1
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01c6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 227
    :sswitch_2
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01c7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 232
    :sswitch_3
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01c8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 240
    :sswitch_4
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01c9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01f6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 258
    :pswitch_1
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01f7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 262
    :pswitch_2
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01f8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 267
    :pswitch_3
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01cd

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 271
    :pswitch_4
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01ce

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 275
    :pswitch_5
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01cf

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 279
    :pswitch_6
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 283
    :pswitch_7
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01fa

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 287
    :pswitch_8
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 291
    :pswitch_9
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01fb

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 296
    :pswitch_a
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 300
    :pswitch_b
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d5

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 313
    :pswitch_c
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 317
    :pswitch_d
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01fc

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 321
    :pswitch_e
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 325
    :pswitch_f
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01d9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 329
    :pswitch_10
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01da

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 333
    :pswitch_11
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01f9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 338
    :pswitch_12
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01dc

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 342
    :pswitch_13
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01dd

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 355
    :pswitch_14
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01de

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 359
    :pswitch_15
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01df

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 372
    :pswitch_16
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 378
    :pswitch_17
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 391
    :pswitch_18
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 395
    :pswitch_19
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0c01e3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_4
        0x1112 -> :sswitch_0
        0x1113 -> :sswitch_1
        0x1114 -> :sswitch_1
        0x1115 -> :sswitch_2
        0x1116 -> :sswitch_2
        0x1117 -> :sswitch_2
        0x1118 -> :sswitch_2
        0x1119 -> :sswitch_2
        0x111a -> :sswitch_2
        0x111b -> :sswitch_3
        0x111c -> :sswitch_4
        0x111d -> :sswitch_4
        0x111e -> :sswitch_4
        0x111f -> :sswitch_4
    .end sparse-switch

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 309
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 351
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 368
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 387
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    .line 109
    const-string v0, "CMASMoreInfo"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setIntent(Landroid/content/Intent;)V

    .line 111
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitResourceRefs()V

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    new-instance v0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASMoreInfoViewer;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 557
    const-string v8, "CMASMoreInfo"

    const-string v9, "onNewIntent"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setIntent(Landroid/content/Intent;)V

    .line 559
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 560
    const/4 v0, 0x0

    .line 563
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    const-string v8, "thread_id"

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 564
    .local v4, threadId:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 567
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 569
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 574
    :cond_0
    const/4 v2, 0x0

    .line 575
    .local v2, sameThread:Z
    cmp-long v8, v4, v10

    if-lez v8, :cond_3

    .line 576
    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 585
    :cond_1
    :goto_0
    const-string v8, "CMASMoreInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", thread_id extra is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v8, "CMASMoreInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " new conversation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mConversation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 599
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v8}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    .line 603
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 604
    const-string v6, "CMASMoreInfo"

    const-string v7, "onNewIntent: same conversation"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_2
    return-void

    .line 578
    :cond_3
    if-nez v2, :cond_1

    .line 581
    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v7

    .line 599
    goto :goto_1

    .line 606
    :cond_5
    const-string v6, "CMASMoreInfo"

    const-string v7, "else onNEwIntent"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoLoadMessageContent()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "CMASMoreInfo"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoLoadMessageContent()V

    .line 475
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 101
    const-string v0, "CMASMoreInfo"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mActivity:Landroid/app/Activity;

    .line 104
    return-void
.end method

.method public setMessageFont()V
    .locals 6

    .prologue
    .line 484
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 485
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 488
    .local v1, iFont:I
    const-string v3, "CMASMoreInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Font size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 491
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 492
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 493
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 494
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 495
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 498
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 500
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 501
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 502
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 503
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 504
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 505
    return-void
.end method
