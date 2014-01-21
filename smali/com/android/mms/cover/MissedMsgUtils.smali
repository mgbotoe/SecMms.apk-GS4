.class public Lcom/android/mms/cover/MissedMsgUtils;
.super Ljava/lang/Object;
.source "MissedMsgUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MissedMsgUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, readReportDlg:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 188
    const v3, 0x7f0c00c1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 189
    const v3, 0x7f0c00c2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 190
    const v3, 0x7f0c004f

    invoke-virtual {v0, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v3, 0x7f0c0050

    invoke-virtual {v0, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 195
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 196
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 197
    const/16 v3, 0x31

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    const/high16 v3, 0x4384

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    const/high16 v3, 0x4282

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 201
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 202
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 203
    return-void
.end method

.method public static handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 18
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 118
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 119
    if-eqz p4, :cond_0

    .line 120
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "m_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "seen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "m_id"

    aput-object v8, v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 136
    .local v10, c:Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v14, readReportDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 140
    :cond_2
    if-eqz p4, :cond_3

    .line 141
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_3
    if-eqz v10, :cond_0

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 145
    :cond_4
    :try_start_1
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 147
    .local v17, uri:Landroid/net/Uri;
    new-instance v15, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    .local v15, reportData:Lcom/android/mms/data/ReadReportData;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz v10, :cond_5

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_5
    new-instance v13, Lcom/android/mms/cover/MissedMsgUtils$4;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v14, v1, v2}, Lcom/android/mms/cover/MissedMsgUtils$4;-><init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 164
    .local v13, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/mms/cover/MissedMsgUtils$5;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lcom/android/mms/cover/MissedMsgUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 172
    .local v12, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v11, Lcom/android/mms/cover/MissedMsgUtils$6;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lcom/android/mms/cover/MissedMsgUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 180
    .local v11, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v11}, Lcom/android/mms/cover/MissedMsgUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 150
    .end local v11           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v12           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v13           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v15           #reportData:Lcom/android/mms/data/ReadReportData;
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_6

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 18
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 53
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 54
    if-eqz p4, :cond_0

    .line 55
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v2, "m_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "m_id"

    aput-object v8, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 72
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 73
    :cond_2
    if-eqz p4, :cond_3

    .line 74
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_3
    if-eqz v13, :cond_0

    .line 84
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 78
    :cond_4
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 79
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 83
    .local v10, mmsId:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 84
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_5
    new-instance v7, Lcom/android/mms/cover/MissedMsgUtils$1;

    move-object/from16 v8, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/cover/MissedMsgUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 97
    .local v7, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v15, Lcom/android/mms/cover/MissedMsgUtils$2;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lcom/android/mms/cover/MissedMsgUtils$2;-><init>(Ljava/lang/Runnable;)V

    .line 105
    .local v15, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v14, Lcom/android/mms/cover/MissedMsgUtils$3;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lcom/android/mms/cover/MissedMsgUtils$3;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v14, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v15, v14}, Lcom/android/mms/cover/MissedMsgUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 83
    .end local v7           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #mmsId:Ljava/lang/String;
    .end local v14           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v15           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    .line 84
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method
