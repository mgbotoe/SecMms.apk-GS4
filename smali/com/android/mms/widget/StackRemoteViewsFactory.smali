.class Lcom/android/mms/widget/StackRemoteViewsFactory;
.super Ljava/lang/Object;
.source "NoticeWidgetRemoteViewService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field flag:Z

.field private mAddDefaultResourceId:I

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDateFormatContentObserver:Landroid/database/ContentObserver;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTimeFormatContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->flag:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    .line 385
    new-instance v0, Lcom/android/mms/widget/StackRemoteViewsFactory$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/widget/StackRemoteViewsFactory$1;-><init>(Lcom/android/mms/widget/StackRemoteViewsFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    .line 392
    new-instance v0, Lcom/android/mms/widget/StackRemoteViewsFactory$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/widget/StackRemoteViewsFactory$2;-><init>(Lcom/android/mms/widget/StackRemoteViewsFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    .line 82
    iput-object p1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    .line 84
    return-void

    .line 239
    :array_0
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/widget/StackRemoteViewsFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->notifyDataChanged()V

    return-void
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "pixels"

    .prologue
    const/4 v10, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 366
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 368
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 369
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 370
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 372
    .local v5, rectF:Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 374
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 376
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 379
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 380
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    return-object v2
.end method

.method private notifyDataChanged()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 401
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    const v2, 0x7f0b0128

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 402
    return-void
.end method

.method private queryFavouritesConversations()V
    .locals 17

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 281
    new-instance v14, Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14}, Lcom/android/mms/widget/NoticeDBControl;->isOpen()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14}, Lcom/android/mms/widget/NoticeDBControl;->queryforThread()Landroid/database/Cursor;

    move-result-object v2

    .line 285
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 286
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v13, values:Landroid/content/ContentValues;
    :cond_1
    const-string v14, "thread_id"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 289
    .local v11, threadId:J
    const-string v14, "display_number"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, display_number:Ljava/lang/String;
    const-string v14, "count"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 292
    .local v1, count:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14, v5}, Lcom/android/mms/widget/NoticeDBControl;->getThreadId(Ljava/lang/String;)J

    move-result-wide v8

    .line 293
    .local v8, new_threadId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v14, v8, v9}, Lcom/android/mms/widget/NoticeDBControl;->queryReceiveMessage(J)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    .local v6, mCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 297
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 299
    .local v7, new_count:I
    cmp-long v14, v11, v8

    if-nez v14, :cond_6

    if-ne v1, v7, :cond_6

    .line 330
    .end local v7           #new_count:I
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 332
    :goto_1
    const/4 v6, 0x0

    .line 335
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 337
    .end local v1           #count:I
    .end local v5           #display_number:Ljava/lang/String;
    .end local v6           #mCursor:Landroid/database/Cursor;
    .end local v8           #new_threadId:J
    .end local v11           #threadId:J
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz v2, :cond_5

    .line 338
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_5
    return-void

    .line 302
    .restart local v1       #count:I
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v5       #display_number:Ljava/lang/String;
    .restart local v6       #mCursor:Landroid/database/Cursor;
    .restart local v7       #new_count:I
    .restart local v8       #new_threadId:J
    .restart local v11       #threadId:J
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_6
    const-wide/16 v3, 0x0

    .line 303
    .local v3, date:J
    const/4 v10, 0x0

    .line 304
    .local v10, subject:Ljava/lang/String;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 305
    const-string v14, "date"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 306
    const-string v14, "sms"

    const-string v15, "transport_type"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 308
    const-string v14, "body"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 319
    :goto_2
    const-string v14, "thread_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string v14, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v14, "subject"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v14, "current"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v14, "count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "display_number=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 327
    .end local v3           #date:J
    .end local v7           #new_count:I
    .end local v10           #subject:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 330
    if-eqz v6, :cond_3

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 310
    .restart local v3       #date:J
    .restart local v7       #new_count:I
    .restart local v10       #subject:Ljava/lang/String;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    const-string v15, "_id"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/mms/widget/NoticeDBControl;->queryMmsBody(I)Ljava/lang/String;

    move-result-object v10

    .line 312
    const-wide/16 v14, 0x3e8

    mul-long/2addr v3, v14

    goto :goto_2

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v15, 0x7f0c00ee

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto :goto_2

    .line 330
    .end local v3           #date:J
    .end local v7           #new_count:I
    .end local v10           #subject:Ljava/lang/String;
    :catchall_0
    move-exception v14

    if-eqz v6, :cond_9

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v6, 0x0

    .line 330
    :cond_9
    throw v14
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 3
    .parameter "byteString"

    .prologue
    .line 345
    if-eqz p0, :cond_0

    .line 346
    const-string v2, "Latin-1"

    invoke-static {p0, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, byteArray:[B
    move-object v1, v0

    .line 350
    .end local v0           #byteArray:[B
    .local v1, byteArray:[B
    :goto_0
    return-object v1

    .line 349
    .end local v1           #byteArray:[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #byteArray:[B
    move-object v1, v0

    .line 350
    .end local v0           #byteArray:[B
    .restart local v1       #byteArray:[B
    goto :goto_0
.end method


# virtual methods
.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 356
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 268
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.favoritecontacts.EDITMODEINTENT_LARGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, in:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3
    .parameter "contactId"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 28
    .parameter "position"

    .prologue
    .line 113
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const v26, 0x7f040037

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 114
    .local v21, rv:Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/widget/StackRemoteViewsFactory;->stringbuild(I)Ljava/lang/String;

    move-result-object v22

    .line 115
    .local v22, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    sget v25, Lcom/android/mms/widget/MmsWidgetProvider;->sFontSizeIndex:I

    invoke-static/range {v25 .. v25}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v9

    .line 119
    .local v9, fontSize:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 120
    .local v6, count:I
    const/16 v24, 0x0

    .line 121
    .local v24, total_count:I
    const-wide/16 v4, -0x1

    .line 122
    .local v4, contactId:J
    const/16 v16, 0x0

    .line 123
    .local v16, itemNumber:Ljava/lang/String;
    if-nez v6, :cond_1

    const/4 v12, 0x1

    .line 124
    .local v12, isEmpty:Z
    :goto_0
    const/4 v13, 0x0

    .line 127
    .local v13, isPhotoAvaiable:Z
    if-nez v12, :cond_8

    .line 128
    const-string v25, "contact_id"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 129
    const-string v25, "count"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 132
    const-string v25, "display_name"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, itemName:Ljava/lang/String;
    const-string v25, "display_name_primary"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, itemNamePrimary:Ljava/lang/String;
    const-string v25, "display_number"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "android.contacts.DISPLAY_ORDER"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 140
    .local v19, orderOfValue:I
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 141
    const v25, 0x7f0b0115

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    :goto_1
    const v25, 0x7f0b0115

    const/16 v26, 0x0

    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 148
    const/16 v23, 0x0

    .line 149
    .local v23, subject:Ljava/lang/String;
    if-nez v24, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c00ee

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 151
    const v25, 0x7f0b002f

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    :goto_2
    const v25, 0x7f0b002f

    const/16 v26, 0x0

    add-int/lit8 v27, v9, -0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 163
    const-string v25, "date"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 164
    .local v17, longdate:J
    const-wide/16 v25, 0x0

    cmp-long v25, v17, v25

    if-eqz v25, :cond_5

    .line 165
    const v25, 0x7f0b00f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 166
    const v25, 0x7f0b00f5

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    const v25, 0x7f0b00f5

    const/16 v26, 0x0

    add-int/lit8 v27, v9, -0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 172
    :goto_3
    const-string v25, "photo"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 173
    .local v20, photoIndex:I
    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-nez v25, :cond_6

    const/4 v13, 0x1

    .line 175
    :goto_4
    if-eqz v13, :cond_7

    .line 176
    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 177
    .local v10, image:[B
    const/4 v11, 0x0

    .line 178
    .local v11, imageTemp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/widget/StackRemoteViewsFactory;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 185
    const v25, 0x7f0b0114

    const-string v26, "setImageBitmap"

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    .end local v10           #image:[B
    .end local v11           #imageTemp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_5
    const v25, 0x7f0b0114

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v25, 0x7f0b0115

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v25, 0x7f0b002f

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v8, fillInIntent:Landroid/content/Intent;
    const-string v25, "android.intent.action.SENDTO"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v25, 0x3400

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-string v25, "smsto"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    const-string v25, "from_widget"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const v25, 0x7f0b0113

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 217
    .end local v8           #fillInIntent:Landroid/content/Intent;
    .end local v14           #itemName:Ljava/lang/String;
    .end local v15           #itemNamePrimary:Ljava/lang/String;
    .end local v17           #longdate:J
    .end local v19           #orderOfValue:I
    .end local v20           #photoIndex:I
    .end local v23           #subject:Ljava/lang/String;
    :goto_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    return-object v21

    .line 123
    .end local v12           #isEmpty:Z
    .end local v13           #isPhotoAvaiable:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 143
    .restart local v12       #isEmpty:Z
    .restart local v13       #isPhotoAvaiable:Z
    .restart local v14       #itemName:Ljava/lang/String;
    .restart local v15       #itemNamePrimary:Ljava/lang/String;
    .restart local v19       #orderOfValue:I
    :cond_2
    const v25, 0x7f0b0115

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 153
    .restart local v23       #subject:Ljava/lang/String;
    :cond_3
    const-string v25, "subject"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 154
    const/16 v25, 0x10b

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 155
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c000c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 158
    :cond_4
    const v25, 0x7f0b002f

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 169
    .restart local v17       #longdate:J
    :cond_5
    const v25, 0x7f0b00f5

    const/16 v26, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 173
    .restart local v20       #photoIndex:I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 191
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/widget/StackRemoteViewsFactory;->getSpeedDialDefaultImage(J)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAddDefaultResourceId:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_7
    const v25, 0x7f0b0114

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mAddDefaultResourceId:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 211
    .end local v14           #itemName:Ljava/lang/String;
    .end local v15           #itemNamePrimary:Ljava/lang/String;
    .end local v17           #longdate:J
    .end local v19           #orderOfValue:I
    .end local v20           #photoIndex:I
    .end local v23           #subject:Ljava/lang/String;
    :cond_8
    const v25, 0x7f0b0114

    const/16 v26, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 212
    const v25, 0x7f0b0115

    const/16 v26, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    const v25, 0x7f0b002f

    const/16 v26, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    const v25, 0x7f0b00f5

    const/16 v26, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 192
    .restart local v14       #itemName:Ljava/lang/String;
    .restart local v15       #itemNamePrimary:Ljava/lang/String;
    .restart local v17       #longdate:J
    .restart local v19       #orderOfValue:I
    .restart local v20       #photoIndex:I
    .restart local v23       #subject:Ljava/lang/String;
    :catch_0
    move-exception v25

    goto :goto_7
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 87
    new-instance v2, Lcom/android/mms/widget/NoticeDBControl;

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    .line 89
    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, dateFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, timeFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/mms/widget/StackRemoteViewsFactory;->queryFavouritesConversations()V

    .line 277
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method stringbuild(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/android/mms/widget/StackRemoteViewsFactory;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, selectionLocalDb:Ljava/lang/String;
    return-object v0
.end method
