.class public Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;
.super Ljava/lang/Object;
.source "CscParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CscParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get_DefaultToneUri_MediaStore"
.end annotation


# instance fields
.field private MediaStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/transaction/CscParser;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "MediaStr"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/mms/transaction/CscParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Lcom/android/mms/transaction/CscParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;-><init>(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 452
    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v6, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/mms/transaction/CscParser;

    #getter for: Lcom/android/mms/transaction/CscParser;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/transaction/CscParser;->access$100(Lcom/android/mms/transaction/CscParser;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 456
    .local v2, rm:Landroid/media/RingtoneManager;
    invoke-static {}, Lcom/android/mms/transaction/CscParser;->access$200()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/media/RingtoneManager;->setType(I)V

    .line 458
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 459
    .local v0, c:Landroid/database/Cursor;
    const-string v6, "title"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 460
    .local v4, titleIndex:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : MediaStr =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, position:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 465
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, title:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : position =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-le v1, v6, :cond_3

    .line 477
    :cond_1
    iget-object v6, p0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/mms/transaction/CscParser;

    #getter for: Lcom/android/mms/transaction/CscParser;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/CscParser;->access$300(Lcom/android/mms/transaction/CscParser;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 484
    :goto_1
    return-void

    .line 471
    .restart local v3       #title:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 472
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 480
    .end local v3           #title:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 481
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : uri =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {v5}, Lcom/android/mms/transaction/CscParser;->access$402(Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1
.end method
