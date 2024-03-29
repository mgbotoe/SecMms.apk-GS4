.class public Lcom/android/mms/widget/MmsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MmsWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;
    }
.end annotation


# static fields
.field public static final ACTION_FAV_WIDGET_CHANGE:Ljava/lang/String; = "Change"

.field public static final ACTION_FAV_WIDGET_NONE:Ljava/lang/String; = "NONE"

.field public static final ACTION_FAV_WIDGET_UPDATE_ALL:Ljava/lang/String; = "WIDGET_UPDATE_ALL"

.field public static final ACTION_MODE:Ljava/lang/String; = "ACTION_MODE"

.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

.field public static final ACTION_NOTIFY_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

.field public static final EXTRA_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final EXTRA_CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final EXTRA_FROM_WIDGET:Ljava/lang/String; = "from_widget"

.field public static final EXTRA_MESSAGE_INDEX:Ljava/lang/String; = "message_index"

.field public static final EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final MMS_WIDGET:Ljava/lang/String; = "MmsWidget"

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field public static final NOTICE_WIDGET:Ljava/lang/String; = "NoticeWidget"

.field static final SUMMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_HAS_EMAIL_COLUMN_INDEX:I = 0x6

.field static final SUMMARY_HAS_PHONE_NUMBER_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_HAS_Phone_TYPE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MmsWidgetProvider"

.field private static currentWidget:Ljava/lang/String;

.field public static invalidationFlag:Z

.field private static observer:Landroid/database/ContentObserver;

.field public static sFontSizeIndex:I

.field public static sWidgetCount:I


# instance fields
.field private isChanged:Z

.field mContext:Landroid/content/Context;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private needToUpdate:Z

.field remote:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lcom/android/mms/widget/MmsWidgetProvider;->invalidationFlag:Z

    .line 92
    const-string v0, "MmsWidget"

    sput-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    .line 95
    sput v1, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    .line 97
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    .line 419
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/widget/MmsWidgetProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetProvider;)Lcom/android/mms/widget/NoticeDBControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    return-object v0
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .parameter "byteArray"

    .prologue
    .line 450
    const/4 v1, 0x0

    array-length v2, p0

    const-string v3, "Latin-1"

    invoke-static {p0, v1, v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getCurrentWidget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    return-object v0
.end method

.method public static getWidgetCount()I
    .locals 1

    .prologue
    .line 500
    sget v0, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    return v0
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 513
    const-string v1, "MmsWidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    return-void
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "update"

    .prologue
    .line 505
    const-string v1, "MmsWidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "notice_update"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method public static refreshWidgetCount(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 492
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 493
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 496
    .local v2, ids:[I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    sput v3, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    .line 497
    return-void

    .line 496
    :cond_0
    array-length v3, v2

    goto :goto_0
.end method

.method private static setIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/NoticeThreadContactSelector;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v0, addIntent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 324
    .local v1, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b0125

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 325
    return-void
.end method

.method public static setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    const/high16 v4, 0x800

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, onWidgetChangeIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #onWidgetChangeIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .restart local v0       #onWidgetChangeIntent:Landroid/content/Intent;
    const-string v2, "ACTION_MODE"

    const-string v3, "Change"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "NoticeWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 336
    .local v1, onWidgetChangePendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b0127

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    .end local v1           #onWidgetChangePendingIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 341
    .restart local v1       #onWidgetChangePendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnable41Widget()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    const v2, 0x7f0b02b8

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    const/high16 v5, 0x800

    const/4 v4, 0x0

    .line 362
    sget-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v3, "NoticeWidget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, msgIntent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 365
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b0128

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 373
    :goto_0
    return-void

    .line 367
    .end local v0           #clickIntent:Landroid/app/PendingIntent;
    .end local v1           #msgIntent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .restart local v1       #msgIntent:Landroid/content/Intent;
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "from_widget"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 371
    .restart local v0       #clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b02b9

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v1, composeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "from_widget"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 304
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b02b7

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 305
    return-void
.end method

.method public static setIntentForNoticeWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "remoteViews"

    .prologue
    const v3, 0x7f0b0129

    const v2, 0x7f0b0128

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/NoticeWidgetRemoteViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 395
    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 396
    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 397
    return-void
.end method

.method public static setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 309
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/widget/WidgetPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 314
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0b0123

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 315
    return-void
.end method

.method public static setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "remoteViews"

    .prologue
    const v3, 0x7f0b02b9

    const v2, 0x7f0b0129

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/MmsWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p2, v3, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 383
    const/16 v1, 0x8

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 386
    return-void
.end method

.method private static updateNoticeWidget(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 284
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04003b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 287
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForNoticeWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 288
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForAdd(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 289
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 290
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 291
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 293
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 294
    return-void
.end method

.method private static updateWidget(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 272
    const-string v1, "MmsWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidget appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040097

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 274
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 275
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 276
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 277
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForChangeWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 278
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForSettings(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 280
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 416
    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    .line 417
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "MmsWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentObserver() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v1, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/widget/MmsWidgetProvider;->sWidgetCount:I

    .line 410
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    .line 103
    new-instance v2, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 106
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    const-string v2, "MmsWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerContentObserver() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    .line 110
    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->refreshWidgetCount(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 118
    const-string v7, "ACTION_MODE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    .line 120
    if-eqz v0, :cond_0

    const-string v7, "Change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "MmsWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 122
    const-string v7, "NoticeWidget"

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    .line 126
    :goto_0
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/android/mms/widget/WidgetPreferenceActivity;->setCurrentWidget(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    .line 130
    :cond_0
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v8, "NoticeWidget"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    .line 133
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-nez v7, :cond_1

    .line 134
    new-instance v7, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 137
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 138
    .local v6, uri:Landroid/net/Uri;
    sget-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    const-string v7, "MmsWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerContentObserver() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v4, Lcom/android/mms/widget/UpdateFavoriteDBData;

    invoke-direct {v4}, Lcom/android/mms/widget/UpdateFavoriteDBData;-><init>()V

    .line 142
    .local v4, data:Lcom/android/mms/widget/UpdateFavoriteDBData;
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    .line 143
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    .line 144
    new-instance v7, Lcom/android/mms/widget/MmsWidgetProvider$1;

    invoke-direct {v7, p0}, Lcom/android/mms/widget/MmsWidgetProvider$1;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    iput-object v7, v4, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    .line 153
    new-instance v7, Lcom/android/mms/widget/UpdateContactDBTask;

    invoke-direct {v7}, Lcom/android/mms/widget/UpdateContactDBTask;-><init>()V

    new-array v8, v10, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    aput-object v4, v8, v11

    invoke-virtual {v7, v8}, Lcom/android/mms/widget/UpdateContactDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #data:Lcom/android/mms/widget/UpdateFavoriteDBData;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 157
    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    .line 163
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    if-eqz v7, :cond_4

    .line 164
    :cond_3
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$2;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$2;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    :cond_4
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-eqz v7, :cond_5

    .line 177
    iput-boolean v11, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    .line 178
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 179
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v5, thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 183
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 220
    .end local v1           #appWidgetIds:[I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v5           #thisAppWidget:Landroid/content/ComponentName;
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    return-void

    .line 124
    :cond_6
    const-string v7, "MmsWidget"

    sput-object v7, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :cond_7
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    .line 160
    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v7

    sput v7, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    goto :goto_1

    .line 186
    :cond_8
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    .line 188
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 189
    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    .line 195
    :cond_9
    :goto_3
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    if-eqz v7, :cond_b

    .line 196
    :cond_a
    const-string v7, "MmsWidgetProvider"

    const-string v8, "onReceive() action=ACTION_NOTIFY_DATASET_CHANGED"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$3;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$3;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_b
    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    if-eqz v7, :cond_5

    .line 211
    iput-boolean v11, p0, Lcom/android/mms/widget/MmsWidgetProvider;->isChanged:Z

    .line 212
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 213
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .restart local v5       #thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 217
    .restart local v1       #appWidgetIds:[I
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_2

    .line 190
    .end local v1           #appWidgetIds:[I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v5           #thisAppWidget:Landroid/content/ComponentName;
    :cond_c
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_FONT_SIZE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 191
    iput-boolean v10, p0, Lcom/android/mms/widget/MmsWidgetProvider;->needToUpdate:Z

    .line 192
    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v7

    sput v7, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    goto :goto_3
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v11, 0x1

    .line 225
    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->currentWidget:Ljava/lang/String;

    const-string v9, "NoticeWidget"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    .line 227
    sput-boolean v11, Lcom/android/mms/widget/MmsWidgetProvider;->invalidationFlag:Z

    .line 228
    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    if-nez v8, :cond_0

    .line 229
    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/mms/widget/MmsWidgetProvider$NoticeSelfContentObserver;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;Landroid/os/Handler;)V

    sput-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 232
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 233
    .local v7, uri:Landroid/net/Uri;
    sget-object v8, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v7, v11, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    const-string v8, "MmsWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerContentObserver() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/widget/MmsWidgetProvider;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v3, Lcom/android/mms/widget/UpdateFavoriteDBData;

    invoke-direct {v3}, Lcom/android/mms/widget/UpdateFavoriteDBData;-><init>()V

    .line 237
    .local v3, data:Lcom/android/mms/widget/UpdateFavoriteDBData;
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->context:Landroid/content/Context;

    .line 238
    iget-object v8, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->dbControll:Lcom/android/mms/widget/NoticeDBControl;

    .line 239
    new-instance v8, Lcom/android/mms/widget/MmsWidgetProvider$4;

    invoke-direct {v8, p0}, Lcom/android/mms/widget/MmsWidgetProvider$4;-><init>(Lcom/android/mms/widget/MmsWidgetProvider;)V

    iput-object v8, v3, Lcom/android/mms/widget/UpdateFavoriteDBData;->finisher:Ljava/lang/Runnable;

    .line 254
    new-instance v8, Lcom/android/mms/widget/UpdateContactDBTask;

    invoke-direct {v8}, Lcom/android/mms/widget/UpdateContactDBTask;-><init>()V

    new-array v9, v11, [Lcom/android/mms/widget/UpdateFavoriteDBData;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/mms/widget/UpdateContactDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #data:Lcom/android/mms/widget/UpdateFavoriteDBData;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    move-object v1, p3

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget v0, v1, v5

    .line 260
    .local v0, appWidgetId:I
    invoke-static {p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->updateNoticeWidget(Landroid/content/Context;I)V

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 264
    .end local v0           #appWidgetId:I
    .end local v1           #arr$:[I
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, p3

    if-ge v4, v8, :cond_2

    .line 265
    aget v8, p3, v4

    invoke-static {p1, v8}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 268
    .end local v4           #i:I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 269
    return-void
.end method

.method public queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 473
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 474
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 482
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 486
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 488
    goto :goto_0
.end method

.method public queryPhoneNumbers(JJ)Landroid/database/Cursor;
    .locals 10
    .parameter "contactId"
    .parameter "Dataid"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 455
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 456
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=?AND _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 464
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 468
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 470
    goto :goto_0
.end method
