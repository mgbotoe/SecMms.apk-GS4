.class public Lcom/android/mms/util/TelephonyDBUtils;
.super Ljava/lang/Object;
.source "TelephonyDBUtils.java"


# static fields
.field private static final SEND_MMS_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/TelephonyDBUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/TelephonyDBUtils;->SEND_SMS_PROJECTION:[Ljava/lang/String;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/TelephonyDBUtils;->SEND_MMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPendingMmsCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 58
    const/4 v9, 0x0

    .line 59
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 62
    .local v7, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/TelephonyDBUtils;->SEND_MMS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 64
    if-nez v9, :cond_1

    .line 65
    const-string v0, "Mms/TelephonyDBUtils"

    const-string v1, "getPendingMmsCount Cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v9, :cond_0

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v9, 0x0

    :cond_0
    move v8, v7

    .line 77
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    return v8

    .line 69
    .end local v8           #count:I
    .restart local v7       #count:I
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 71
    if-eqz v9, :cond_2

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v9, 0x0

    :cond_2
    move v8, v7

    .line 77
    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0

    .line 71
    .end local v8           #count:I
    .restart local v7       #count:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v9, 0x0

    .line 71
    :cond_3
    throw v0
.end method

.method public static getPendingSmsCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 35
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 36
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 39
    .local v7, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/util/TelephonyDBUtils;->SEND_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 41
    if-nez v9, :cond_1

    .line 42
    const-string v0, "Mms/TelephonyDBUtils"

    const-string v1, "getPendingSmsCount Cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v9, :cond_0

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 50
    const/4 v9, 0x0

    :cond_0
    move v8, v7

    .line 54
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    return v8

    .line 46
    .end local v8           #count:I
    .restart local v7       #count:I
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 48
    if-eqz v9, :cond_2

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 50
    const/4 v9, 0x0

    :cond_2
    move v8, v7

    .line 54
    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0

    .line 48
    .end local v8           #count:I
    .restart local v7       #count:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 50
    const/4 v9, 0x0

    .line 48
    :cond_3
    throw v0
.end method

.method public static isReadMsg(Landroid/content/Context;IJ)Z
    .locals 9
    .parameter "context"
    .parameter "msgType"
    .parameter "msgId"

    .prologue
    .line 81
    const/4 v7, 0x0

    .line 82
    .local v7, isRead:Z
    const/4 v6, 0x0

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 85
    .local v1, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 95
    :pswitch_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND read=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 113
    :cond_0
    if-eqz v6, :cond_1

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    const/4 v6, 0x0

    :cond_1
    move v8, v7

    .line 119
    .end local v7           #isRead:Z
    .local v8, isRead:I
    :goto_1
    return v8

    .line 87
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #isRead:I
    .restart local v7       #isRead:Z
    :pswitch_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .line 91
    goto :goto_0

    .line 109
    .restart local v3       #where:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 110
    const/4 v7, 0x1

    .line 113
    :cond_3
    if-eqz v6, :cond_4

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    const/4 v6, 0x0

    :cond_4
    move v8, v7

    .line 119
    .restart local v8       #isRead:I
    goto :goto_1

    .line 113
    .end local v8           #isRead:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    const/4 v6, 0x0

    .line 113
    :cond_5
    throw v0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
