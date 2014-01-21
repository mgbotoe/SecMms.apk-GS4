.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static DRAFT_TEXT_COLOR:I = 0x0

.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static THREAD_STATUS_TEXT_COLOR:I


# instance fields
.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mDateFormatContentObserver:Landroid/database/ContentObserver;

.field private mShouldShowViewMore:Z

.field private mTimeFormatContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    .line 408
    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    .line 78
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 79
    const-string v1, "Mms/WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsFactory intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    .line 84
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->notifyDataChanged()V

    return-void
.end method

.method private getConversationCount()I
    .locals 2

    .prologue
    .line 177
    const-string v0, "Mms/WidgetService"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 344
    const-string v3, "Mms/WidgetService"

    const-string v4, "getViewMoreConversationsView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040098

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 348
    .local v2, view:Landroid/widget/RemoteViews;
    const v3, 0x7f0b02bd

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 349
    const v3, 0x7f0b02bb

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 350
    const v3, 0x7f0b02bc

    iget-object v4, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0376

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v0, convIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    const-string v3, "fromWidget"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 363
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f0b02ba

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 366
    return-object v2
.end method

.method private notifyDataChanged()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 419
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0b02b9

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 420
    return-void
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v2, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 136
    .local v2, projection:[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date DESC,_id DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, order:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 132
    .end local v2           #projection:[Ljava/lang/String;
    .end local v5           #order:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 140
    :cond_1
    const-string v5, "date DESC,_id DESC"

    .restart local v5       #order:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    const-string v3, "Mms/WidgetService"

    const-string v4, "getCount"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 161
    monitor-exit v4

    .line 165
    :goto_0
    return v1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v0

    .line 164
    .local v0, count:I
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 165
    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v1, v0

    monitor-exit v4

    goto :goto_0

    .line 166
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #count:I
    :cond_2
    move v3, v1

    .line 164
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 386
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 371
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040098

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 373
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0b02bd

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 374
    const v1, 0x7f0b02bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 375
    const v1, 0x7f0b02bc

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0377

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 376
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 16
    .parameter "position"

    .prologue
    .line 204
    const-string v10, "Mms/WidgetService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getViewAt position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 206
    :try_start_0
    sget v10, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    invoke-static {v10}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v3

    .line 209
    .local v3, fontSize:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v10, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v10

    move/from16 v0, p1

    if-lt v0, v10, :cond_1

    .line 210
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v11

    .line 335
    :goto_0
    return-object v7

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 214
    const-string v10, "Mms/WidgetService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to move to position: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v11

    goto :goto_0

    .line 336
    .end local v3           #fontSize:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 218
    .restart local v3       #fontSize:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-static {v10, v12}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 221
    .local v2, conv:Lcom/android/mms/data/Conversation;
    new-instance v7, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v12, 0x7f040098

    invoke-direct {v7, v10, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 222
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    const v10, 0x7f0b002d

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewFingerHovered(IZ)V

    .line 223
    const v10, 0x7f0b002f

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewFingerHovered(IZ)V

    .line 224
    const v10, 0x7f0b02bd

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    const v10, 0x7f0b02bb

    const/16 v12, 0x8

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_6

    .line 229
    :cond_3
    const v10, 0x7f0b00f5

    const/16 v12, 0x8

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    .line 238
    .local v6, recipients:Lcom/android/mms/data/ContactList;
    const-string v10, ", "

    invoke-virtual {v6, v10}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, from:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 240
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 241
    const v10, 0x7f0b002d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c013b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 263
    :goto_2
    const v10, 0x7f0b002d

    const/4 v12, 0x0

    int-to-float v13, v3

    invoke-virtual {v7, v10, v12, v13}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 274
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_c

    .line 275
    const v10, 0x7f0b002f

    const/4 v12, 0x4

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    :goto_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v8

    .line 287
    .local v8, unreadCount:I
    if-lez v8, :cond_e

    .line 288
    const v10, 0x7f0b00f2

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 289
    const v10, 0x7f0b00f2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 293
    :goto_4
    const/4 v9, 0x1

    .line 294
    .local v9, visible:Z
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 295
    const v10, 0x7f0b00f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v13, 0x7f0c000a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    const v10, 0x7f0b00f3

    sget v12, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 312
    :goto_5
    if-eqz v9, :cond_13

    .line 313
    const v10, 0x7f0b00f3

    const/4 v12, 0x0

    add-int/lit8 v13, v3, -0x2

    int-to-float v13, v13

    invoke-virtual {v7, v10, v12, v13}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 314
    const v10, 0x7f0b00f3

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 320
    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, clickIntent:Landroid/content/Intent;
    const-string v10, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v10, 0x3400

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    const-string v10, "thread_id"

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    invoke-virtual {v1, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 327
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 328
    const-string v10, "cmas"

    const/4 v12, 0x1

    invoke-virtual {v1, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 331
    const-string v10, "fromWidget"

    const/4 v12, 0x1

    invoke-virtual {v1, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    :cond_5
    const v10, 0x7f0b02ba

    invoke-virtual {v7, v10, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 335
    monitor-exit v11

    goto/16 :goto_0

    .line 231
    .end local v1           #clickIntent:Landroid/content/Intent;
    .end local v4           #from:Ljava/lang/String;
    .end local v6           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #unreadCount:I
    .end local v9           #visible:Z
    :cond_6
    const v10, 0x7f0b00f5

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 232
    const v10, 0x7f0b00f5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    const v10, 0x7f0b00f5

    const/4 v12, 0x0

    add-int/lit8 v13, v3, -0x2

    int-to-float v13, v13

    invoke-virtual {v7, v10, v12, v13}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_1

    .line 243
    .restart local v4       #from:Ljava/lang/String;
    .restart local v6       #recipients:Lcom/android/mms/data/ContactList;
    :cond_7
    const v10, 0x7f0b002d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 246
    :cond_8
    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_9

    .line 247
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, number:Ljava/lang/String;
    const-string v10, "CBmessages"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 250
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0c00fb

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .end local v5           #number:Ljava/lang/String;
    :cond_9
    :goto_7
    const-string v10, "#CMAS#"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 257
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    :cond_a
    const v10, 0x7f0b002d

    invoke-virtual {v7, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 251
    .restart local v5       #number:Ljava/lang/String;
    :cond_b
    const-string v10, "Pushmessage"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 252
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0c0161

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 277
    .end local v5           #number:Ljava/lang/String;
    :cond_c
    const v10, 0x7f0b002f

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_d

    .line 279
    const v10, 0x7f0b002f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v13, 0x7f0c01b5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    :goto_8
    const v10, 0x7f0b002f

    const/4 v12, 0x0

    add-int/lit8 v13, v3, -0x1

    int-to-float v13, v13

    invoke-virtual {v7, v10, v12, v13}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_3

    .line 281
    :cond_d
    const v10, 0x7f0b002f

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 291
    .restart local v8       #unreadCount:I
    :cond_e
    const v10, 0x7f0b00f2

    const/16 v12, 0x8

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 297
    .restart local v9       #visible:Z
    :cond_f
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 298
    const v10, 0x7f0b00f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v13, 0x7f0c0137

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 299
    const v10, 0x7f0b00f3

    sget v12, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_5

    .line 301
    :cond_10
    const v10, 0x7f0b00f3

    sget v12, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 303
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 304
    const v10, 0x7f0b00f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v13, 0x7f0c0136

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 305
    :cond_11
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 306
    const v10, 0x7f0b00f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v13, 0x7f0c009d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 308
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 316
    :cond_13
    const v10, 0x7f0b00f3

    const/16 v12, 0x8

    invoke-virtual {v7, v10, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v2, "Mms/WidgetService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 92
    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, dateFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, timeFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Mms/WidgetService"

    const-string v1, "onDataSetChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "Mms/WidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "updated"

    .prologue
    .line 395
    const-string v0, "Mms/WidgetService"

    const-string v1, "onUpdate from Contact"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0b02b9

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 397
    return-void
.end method
