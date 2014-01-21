.class public Lcom/samsung/mms/content/MmsPartExportService;
.super Landroid/app/IntentService;
.source "MmsPartExportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/content/MmsPartExportService$1;,
        Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExportService"


# instance fields
.field private mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "attachment_export"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 207
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/MmsPartExportService"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private setAsRingtone(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    const-string v3, "Mms/MmsPartExportService"

    const-string v4, "setAsRingtone"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v3, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    const-string v3, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    const-string v3, "is_alarm"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 222
    const-string v3, "is_music"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 229
    const-string v3, "Mms/MmsPartExportService"

    const-string v4, "newUri is not null. so setAsRingtone!!!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 232
    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/mms/content/MmsPartExportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(Ljava/lang/CharSequence;I)V

    .line 186
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/mms/content/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;-><init>(Lcom/samsung/mms/content/MmsPartExportService;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/content/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 21
    .parameter "intent"

    .prologue
    .line 44
    const-string v2, "msg_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 45
    .local v17, msgUri:Landroid/net/Uri;
    const-string v2, "part_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 46
    .local v3, partUri:Landroid/net/Uri;
    const-string v2, "overwrite"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 47
    .local v18, overwrite:Z
    const-string v2, "ringtone"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 50
    .local v20, ringtone:Z
    const-string v2, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, fileName:Ljava/lang/String;
    if-nez v17, :cond_8

    .line 54
    if-nez v14, :cond_3

    .line 55
    const/4 v10, 0x0

    .line 58
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/content/MmsPartExportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 59
    if-eqz v10, :cond_2

    .line 60
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    const-string v2, "cl"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 62
    if-nez v14, :cond_e

    .line 63
    const-string v2, "fn"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 64
    if-nez v14, :cond_e

    .line 65
    const-string v2, "cid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 66
    if-nez v14, :cond_e

    .line 67
    const-string v2, "name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 68
    if-eqz v14, :cond_e

    const-string v2, "=?"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 69
    const-string v2, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    move-object v15, v14

    .line 75
    .end local v14           #fileName:Ljava/lang/String;
    .local v15, fileName:Ljava/lang/String;
    :goto_0
    if-eqz v15, :cond_d

    .line 77
    :try_start_1
    invoke-static {v15}, Lcom/samsung/mms/content/MmsPartExportService;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 78
    .local v8, byteFileName:[B
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    const/16 v2, 0x2e

    :try_start_2
    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 81
    const-string v2, "ct"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, contentType:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 83
    .local v16, mExtension:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "dcf"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v16, "dcf"

    .line 89
    :cond_0
    if-nez v16, :cond_1

    .line 90
    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    const-string v16, "vcf"

    .line 101
    :cond_1
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    const-string v2, "."

    invoke-virtual {v14, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 115
    .end local v8           #byteFileName:[B
    .end local v9           #contentType:Ljava/lang/String;
    .end local v16           #mExtension:Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 117
    :goto_3
    const/4 v10, 0x0

    .line 132
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_4
    if-nez v14, :cond_a

    .line 133
    const-string v2, "Mms/MmsPartExportService"

    const-string v4, "onHandleIntent: fileName is NULL"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v2, 0x7f0c00d0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    .line 175
    :goto_5
    return-void

    .line 92
    .restart local v8       #byteFileName:[B
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v16       #mExtension:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    const-string v16, "vcs"

    goto :goto_1

    .line 94
    :cond_5
    const-string v2, "text/x-vNote"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    const-string v16, "vnt"

    goto :goto_1

    .line 96
    :cond_6
    const-string v2, "text/x-vtodo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const-string v16, "vts"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 108
    .end local v8           #byteFileName:[B
    .end local v9           #contentType:Ljava/lang/String;
    .end local v16           #mExtension:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 109
    .local v12, e:Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 110
    const-string v2, "Mms/MmsPartExportService"

    const-string v4, "IllegalArgumentException"

    invoke-static {v2, v4, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    if-eqz v10, :cond_3

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 111
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 112
    .local v12, e:Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string v2, "Mms/MmsPartExportService"

    const-string v4, "Exception"

    invoke-static {v2, v4, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    if-eqz v10, :cond_3

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 115
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v10, :cond_7

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v10, 0x0

    .line 115
    :cond_7
    throw v2

    .line 123
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_8
    if-nez v14, :cond_9

    .line 124
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 125
    .local v13, fallback:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1, v13}, Lcom/samsung/mms/content/MmsPartExport;->generateFileName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 126
    goto :goto_4

    .line 127
    .end local v13           #fallback:Ljava/lang/String;
    :cond_9
    invoke-static {v14}, Lcom/samsung/mms/content/MmsPartExport;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 138
    :cond_a
    invoke-static {v14}, Lcom/samsung/mms/content/MmsPartExport;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 141
    .local v11, dstFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 142
    if-nez v18, :cond_b

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3, v14}, Lcom/samsung/mms/content/MmsPartExport;->queueRenameDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_5

    .line 148
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v3, v11}, Lcom/samsung/mms/content/MmsPartExport;->copyMedia(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    move-result-object v19

    .line 149
    .local v19, result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    sget-object v2, Lcom/samsung/mms/content/MmsPartExportService$1;->$SwitchMap$com$samsung$mms$content$MmsPartExport$ExportResult:[I

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 152
    :pswitch_0
    if-eqz v20, :cond_c

    .line 154
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/mms/content/MmsPartExportService;->setAsRingtone(Ljava/lang/String;)V

    .line 155
    const v2, 0x7f0c0437

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 157
    :cond_c
    const v2, 0x7f0c00cf

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 161
    :pswitch_1
    const v2, 0x7f0c00d0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 164
    :pswitch_2
    const v2, 0x7f0c012a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 167
    :pswitch_3
    const v2, 0x7f0c0149

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 170
    :pswitch_4
    const v2, 0x7f0c0141

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto/16 :goto_5

    .line 115
    .end local v11           #dstFile:Ljava/io/File;
    .end local v14           #fileName:Ljava/lang/String;
    .end local v19           #result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #fileName:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    goto/16 :goto_8

    .line 111
    .end local v14           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    :catch_2
    move-exception v12

    move-object v14, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    goto/16 :goto_7

    .line 108
    .end local v14           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    :catch_3
    move-exception v12

    move-object v14, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    goto/16 :goto_6

    .end local v14           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    :cond_d
    move-object v14, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    goto/16 :goto_2

    :cond_e
    move-object v15, v14

    .end local v14           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
