.class public Lcom/android/mms/ui/VMessageViewerActivity;
.super Landroid/app/Activity;
.source "VMessageViewerActivity.java"


# static fields
.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMessageList:Landroid/widget/ListView;

.field private mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

.field private msgItem:Lcom/android/mms/ui/MsgItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "VMessageViewerActivity"

    iput-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public importMessageFromSDCARD()Z
    .locals 18

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 127
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 129
    .local v8, content:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 132
    .local v12, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 133
    new-instance v1, Lcom/android/mms/ui/VMessage;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v7

    .line 134
    .local v7, arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v16, sdf:Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 138
    .local v9, date:Ljava/util/Date;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 139
    .local v13, msgType:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 142
    .local v17, time:Ljava/lang/String;
    const-string v1, "SENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, addr:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 150
    const v1, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VMessageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    :cond_0
    if-nez v17, :cond_1

    .line 153
    const-string v17, "2000.1.1.12.00.00"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 156
    :cond_1
    :try_start_1
    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 161
    :goto_1
    const-wide/16 v14, 0x0

    .line 163
    .local v14, restoreTime:J
    if-eqz v9, :cond_5

    .line 164
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 172
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :goto_3
    const/4 v1, 0x1

    .line 185
    if-eqz v12, :cond_2

    .line 187
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 193
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v14           #restoreTime:J
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :cond_2
    :goto_4
    return v1

    .line 145
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #date:Ljava/util/Date;
    .restart local v13       #msgType:Ljava/lang/String;
    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v17       #time:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    :try_start_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2       #addr:Ljava/lang/String;
    goto :goto_0

    .line 157
    :catch_0
    move-exception v10

    .line 158
    .local v10, e:Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 180
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v10           #e:Ljava/text/ParseException;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 181
    .local v10, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    if-eqz v12, :cond_4

    .line 187
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 193
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    const/4 v1, 0x0

    goto :goto_4

    .line 167
    .restart local v2       #addr:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #date:Ljava/util/Date;
    .restart local v13       #msgType:Ljava/lang/String;
    .restart local v14       #restoreTime:J
    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v17       #time:Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/VMessageViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 182
    .end local v2           #addr:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #date:Ljava/util/Date;
    .end local v13           #msgType:Ljava/lang/String;
    .end local v14           #restoreTime:J
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    .end local v17           #time:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 183
    .local v10, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    if-eqz v12, :cond_4

    .line 187
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 188
    :catch_3
    move-exception v10

    .line 189
    :goto_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 185
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    .line 187
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 185
    :cond_7
    :goto_7
    throw v1

    .line 188
    :catch_4
    move-exception v10

    .line 189
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 188
    .local v10, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v10

    goto :goto_6

    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #addr:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #date:Ljava/util/Date;
    .restart local v13       #msgType:Ljava/lang/String;
    .restart local v14       #restoreTime:J
    .restart local v16       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v17       #time:Ljava/lang/String;
    :catch_6
    move-exception v10

    .line 189
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v9, 0x7f040094

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/VMessageViewerActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 62
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, content:Landroid/net/Uri;
    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9}, Lcom/android/mms/ui/MsgItem;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    .line 66
    if-eqz v1, :cond_0

    .line 67
    const/4 v8, 0x0

    .line 69
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/VMessageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 71
    new-instance v9, Lcom/android/mms/ui/VMessage;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Lcom/android/mms/ui/VMessage;->readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 81
    if-eqz v8, :cond_0

    .line 83
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 93
    .end local v8           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget v9, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    iget-object v9, v9, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 94
    :cond_2
    const v9, 0x7f0c025c

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Lcom/android/mms/ui/VMessageViewerActivity;->finish()V

    .line 123
    :goto_1
    return-void

    .line 72
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 74
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v8, :cond_0

    .line 83
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v7

    .line 86
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .local v7, ioe:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 77
    .local v6, iobe:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    if-eqz v8, :cond_0

    .line 83
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 84
    :catch_3
    move-exception v7

    goto :goto_2

    .line 78
    .end local v6           #iobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    if-eqz v8, :cond_0

    .line 83
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 84
    :catch_5
    move-exception v7

    goto :goto_2

    .line 81
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_3

    .line 83
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 81
    :cond_3
    :goto_3
    throw v9

    .line 99
    .end local v8           #is:Ljava/io/InputStream;
    :cond_4
    const v9, 0x7f0b02b1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/VMessageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    .line 100
    new-instance v9, Lcom/android/mms/ui/VMessageListAdapter;

    const v10, 0x7f040095

    iget-object v11, p0, Lcom/android/mms/ui/VMessageViewerActivity;->msgItem:Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/mms/ui/VMessageListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MsgItem;)V

    iput-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    .line 101
    iget-object v9, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMessageList:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/mms/ui/VMessageViewerActivity;->mMsgListAdapter:Lcom/android/mms/ui/VMessageListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    const v9, 0x7f0b023f

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/VMessageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 105
    .local v4, importButton:Landroid/widget/Button;
    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$1;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v9, 0x7f0b0240

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/VMessageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v9, Lcom/android/mms/ui/VMessageViewerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/VMessageViewerActivity$2;-><init>(Lcom/android/mms/ui/VMessageViewerActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 84
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v4           #importButton:Landroid/widget/Button;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v7

    .line 86
    .restart local v7       #ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 84
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_7
    move-exception v7

    goto :goto_2
.end method
