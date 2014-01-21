.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
.super Ljava/lang/Thread;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWorkThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncPathName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPathName:Ljava/lang/String;

.field private mWorkMode:I

.field private mZipPathName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "h"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mContext:Landroid/content/Context;

    .line 393
    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    .line 394
    return-void
.end method

.method private CopyDir(Ljava/io/File;)V
    .locals 6
    .parameter "fileIn"

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    const-string v3, "MessageDatabaseBackupActivity"

    const-string v4, "copyDir::START::ERROR::fileIn is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, sPathIn:Ljava/lang/String;
    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sPathIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v3, "/data/data/com.android.mms/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, sDirName:Ljava/lang/String;
    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sDirName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, sPathOut:Ljava/lang/String;
    const-string v3, "MessageDatabaseBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDir::sPathOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateDir(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private CopyFile(Ljava/io/File;)V
    .locals 14
    .parameter "fileIn"

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::START::ERROR::fileIn is null"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 652
    .local v9, sPathIn:Ljava/lang/String;
    const-string v11, "MessageDatabaseBackupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyFile::sPathIn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v11, "/data/data/com.android.mms/"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 655
    .local v8, sDirName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 657
    .local v10, sPathOut:Ljava/lang/String;
    const-string v11, "MessageDatabaseBackupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyFile::sPathOut="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 662
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 664
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    if-nez v5, :cond_3

    .line 678
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 684
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 690
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, filePermission:Ljava/io/File;
    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    .line 693
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 694
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    .line 695
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 698
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    const/4 v2, 0x0

    .line 699
    .restart local v2       #fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 668
    .end local v1           #filePermission:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v6, 0x0

    .line 669
    .local v6, i:I
    const/4 v7, 0x0

    .line 670
    .local v7, len:I
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_5

    .line 671
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 672
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 674
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #i:I
    .end local v7           #len:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::00::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 678
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 684
    .end local v0           #e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 690
    :goto_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v1       #filePermission:Ljava/io/File;
    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    .line 693
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 694
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    .line 695
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_3

    .line 677
    .end local v1           #filePermission:Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 678
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 684
    :goto_9
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 690
    :goto_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v1       #filePermission:Ljava/io/File;
    const/4 v12, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-ne v12, v13, :cond_4

    .line 693
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 694
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setWritable(ZZ)Z

    .line 695
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 698
    :cond_4
    const/4 v2, 0x0

    .line 699
    const/4 v4, 0x0

    .line 677
    throw v11

    .line 679
    .end local v1           #filePermission:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "copyFile::01::"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "IOException caught while closing fis"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 685
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 686
    .restart local v0       #e:Ljava/io/IOException;
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "copyFile::01::"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const-string v12, "MessageDatabaseBackupActivity"

    const-string v13, "IOException caught while closing fos"

    invoke-static {v12, v13, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 679
    .local v0, e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 685
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 686
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 679
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 680
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 685
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 686
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 678
    .end local v0           #e:Ljava/io/IOException;
    .restart local v6       #i:I
    .restart local v7       #len:I
    :cond_5
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 684
    :goto_b
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 690
    :goto_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v1       #filePermission:Ljava/io/File;
    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-ne v11, v12, :cond_2

    .line 693
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 694
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    .line 695
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    goto/16 :goto_3

    .line 679
    .end local v1           #filePermission:Ljava/io/File;
    :catch_7
    move-exception v0

    .line 680
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fis"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 685
    .end local v0           #e:Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 686
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "copyFile::01::"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "IOException caught while closing fos"

    invoke-static {v11, v12, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 677
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #i:I
    .end local v7           #len:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    .restart local v7       #len:I
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 674
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .end local v7           #len:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    .restart local v7       #len:I
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method private CreateDir(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const/4 v5, 0x1

    .line 587
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v5, v2, :cond_2

    .line 588
    :cond_0
    const-string v2, "MessageDatabaseBackupActivity"

    const-string v3, "createDir::sPath is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::sPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v5, v2, :cond_3

    .line 601
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists!!! Delete START!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/io/File;)Z

    .line 605
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-ne v5, v2, :cond_4

    .line 606
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 607
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 608
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 609
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " make!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 614
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MessageDatabaseBackupActivity"

    const-string v3, "createDir::"

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 611
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dir:Ljava/io/File;
    :cond_4
    :try_start_1
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDir::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " make Fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private CreateSecurityKey(Ljava/lang/String;)[B
    .locals 8
    .parameter "szKey"

    .prologue
    .line 950
    const/16 v5, 0x10

    .line 951
    .local v5, radix:I
    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    const/4 v1, 0x2

    .line 952
    .local v1, divLen:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 953
    .local v4, lenKeyString:I
    rem-int v6, v4, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 954
    const/4 v0, 0x0

    .line 964
    :cond_0
    return-object v0

    .line 951
    .end local v1           #divLen:I
    .end local v4           #lenKeyString:I
    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 956
    .restart local v1       #divLen:I
    .restart local v4       #lenKeyString:I
    :cond_2
    div-int/2addr v4, v1

    .line 958
    new-array v0, v4, [B

    .line 959
    .local v0, byteKey:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 960
    mul-int v3, v2, v1

    .line 961
    .local v3, idx:I
    add-int v6, v3, v1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private DecryptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "szSrcPathName"
    .parameter "szDestPathName"

    .prologue
    .line 937
    const/4 v0, 0x1

    .line 939
    .local v0, bReturn:Z
    const-string v4, "12345678901234567890123456789012"

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 940
    .local v1, byteKey:[B
    if-nez v1, :cond_0

    .line 941
    const/4 v4, 0x0

    .line 946
    :goto_0
    return v4

    .line 943
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 944
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    .line 945
    .local v2, cryptoClass:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Decription(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$500(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    .line 946
    goto :goto_0
.end method

.method private EncryptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "szSrcPathName"
    .parameter "szDestPathName"

    .prologue
    .line 924
    const/4 v0, 0x1

    .line 926
    .local v0, bReturn:Z
    const-string v4, "12345678901234567890123456789012"

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 927
    .local v1, byteKey:[B
    if-nez v1, :cond_0

    .line 928
    const/4 v4, 0x0

    .line 933
    :goto_0
    return v4

    .line 930
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 931
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    .line 932
    .local v2, cryptoClass:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Encryption(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$400(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    .line 933
    goto :goto_0
.end method

.method private ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    .locals 17
    .parameter "zos"
    .parameter "srcPathName"
    .parameter "fileName"

    .prologue
    .line 754
    const/4 v4, 0x1

    .line 756
    .local v4, bReturn:Z
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 757
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 758
    .local v3, arrayFile:[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 759
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v15, v3

    if-ge v10, v15, :cond_2

    .line 760
    aget-object v15, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 761
    const/4 v4, 0x0

    .line 759
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 766
    .end local v3           #arrayFile:[Ljava/io/File;
    .end local v10           #i:I
    :cond_1
    const/4 v5, 0x0

    .line 768
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 770
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .local v6, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 771
    .local v12, szFilePath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 772
    .local v13, szZipFileName:Ljava/lang/String;
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 773
    .local v14, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 774
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 776
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()I

    move-result v15

    new-array v7, v15, [B

    .line 777
    .local v7, buffer:[B
    const/4 v11, 0x0

    .line 778
    .local v11, readCnt:I
    :goto_1
    const/4 v15, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v7, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    .line 779
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 782
    .end local v7           #buffer:[B
    .end local v11           #readCnt:I
    .end local v12           #szFilePath:Ljava/lang/String;
    .end local v13           #szZipFileName:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v9

    move-object v5, v6

    .line 783
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .local v9, ex:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 786
    if-eqz v5, :cond_2

    .line 787
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_3
    return v4

    .line 781
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v11       #readCnt:I
    .restart local v12       #szFilePath:Ljava/lang/String;
    .restart local v13       #szZipFileName:Ljava/lang/String;
    .restart local v14       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 786
    if-eqz v6, :cond_2

    .line 787
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 788
    :catch_1
    move-exception v8

    .line 789
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 790
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #buffer:[B
    .end local v11           #readCnt:I
    .end local v12           #szFilePath:Ljava/lang/String;
    .end local v13           #szZipFileName:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :goto_4
    const/4 v4, 0x0

    goto :goto_3

    .line 785
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v15

    .line 786
    :goto_5
    if-eqz v5, :cond_4

    .line 787
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 785
    :cond_4
    :goto_6
    throw v15

    .line 788
    .restart local v9       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 789
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 788
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 789
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 790
    const/4 v4, 0x0

    goto :goto_6

    .line 785
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 782
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private MessageDataBackup(Ljava/lang/String;)V
    .locals 11
    .parameter "sDirPath"

    .prologue
    const/4 v10, 0x1

    .line 524
    const-string v7, "MessageDatabaseBackupActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageDataBackup::START::sRootPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v10, v7, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v3, 0x0

    .line 530
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 532
    .local v0, aFiles:[Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    if-nez v4, :cond_2

    .line 534
    :try_start_1
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::ERROR::if(null == file)"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 564
    .end local v4           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :goto_1
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::"

    invoke-static {v7, v8, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 538
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 539
    if-nez v0, :cond_3

    .line 540
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::ERROR::if(null == aFiles)"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_3
    const/4 v2, 0x0

    .line 545
    .local v2, fTemp:Ljava/io/File;
    array-length v5, v0

    .line 546
    .local v5, nCount:I
    const-string v7, "MessageDatabaseBackupActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageDataBackup::nCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v6, 0x0

    .local v6, nI:I
    :goto_2
    if-le v5, v6, :cond_6

    .line 549
    aget-object v2, v0, v6

    .line 551
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-ne v10, v7, :cond_4

    .line 552
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CopyDir(Ljava/io/File;)V

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDataBackup(Ljava/lang/String;)V

    .line 561
    :goto_3
    const/4 v2, 0x0

    .line 548
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 554
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-ne v10, v7, :cond_5

    .line 555
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CopyFile(Ljava/io/File;)V

    goto :goto_3

    .line 557
    :cond_5
    const-string v7, "MessageDatabaseBackupActivity"

    const-string v8, "MessageDataBackup::ERROR::fTemp is unknown"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_6
    move-object v3, v4

    .line 565
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_0

    .line 563
    .end local v2           #fTemp:Ljava/io/File;
    .end local v5           #nCount:I
    .end local v6           #nI:I
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "srcPathName"
    .parameter "zipPathName"

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 706
    .local v0, bReturn:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .local v7, srcFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_0

    .line 708
    const/4 v10, 0x0

    .line 750
    :goto_0
    return v10

    .line 711
    :cond_0
    const/4 v5, 0x0

    .line 712
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 713
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 715
    .local v8, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 717
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .local v2, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    .line 719
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .local v9, zos:Ljava/util/zip/ZipOutputStream;
    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 720
    invoke-direct {p0, v9, p1, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c

    move-result v0

    .line 726
    if-eqz v9, :cond_1

    .line 728
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 729
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 734
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 736
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 741
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 743
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :cond_3
    :goto_3
    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :goto_4
    move v10, v0

    .line 750
    goto :goto_0

    .line 722
    :catch_0
    move-exception v3

    .line 723
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 724
    const/4 v0, 0x0

    .line 726
    if-eqz v8, :cond_5

    .line 728
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 729
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 734
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 736
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 741
    :cond_6
    :goto_7
    if-eqz v5, :cond_4

    .line 743
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 744
    :catch_1
    move-exception v4

    .line 745
    .local v4, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_4

    .line 726
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_8
    if-eqz v8, :cond_7

    .line 728
    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 729
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 734
    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    .line 736
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 741
    :cond_8
    :goto_a
    if-eqz v5, :cond_9

    .line 743
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 726
    :cond_9
    :goto_b
    throw v10

    .line 737
    :catch_2
    move-exception v4

    .line 738
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_a

    .line 744
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 745
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_b

    .line 730
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 731
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_9

    .line 737
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v3       #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v4

    .line 738
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_7

    .line 730
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 731
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_6

    .line 737
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_7
    move-exception v4

    .line 738
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2

    .line 744
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 745
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_3

    .line 730
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 731
    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 726
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 722
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v3

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v3

    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_c
    move-exception v3

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method private unZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 799
    const/16 v3, 0x1000

    .line 801
    .local v3, BUFFER_SIZE:I
    const/4 v13, 0x0

    .line 802
    .local v13, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 803
    .local v5, bufferedOutputStream:Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 804
    .local v11, fileInputStream:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 807
    .local v19, zipInputStream:Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12

    .line 808
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .local v12, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Ljava/util/zip/ZipInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13

    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .local v20, zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v6, v5

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .local v6, bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v14, v13

    .line 811
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v14, fileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17

    .local v17, zipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v17, :cond_b

    .line 812
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    .line 813
    .local v18, zipEntryName:Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 815
    .local v16, szName:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 816
    move-object/from16 v8, p2

    .line 817
    .local v8, destPath:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 818
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v16, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 819
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 817
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 824
    .end local v8           #destPath:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v15           #i:I
    :cond_0
    new-instance v10, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_15

    .line 827
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 828
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_2
    move-object v6, v5

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v14, v13

    .line 845
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 830
    :cond_1
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 831
    .local v4, buffer:[B
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14

    .line 832
    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v21, 0x1000

    move/from16 v0, v21

    invoke-direct {v5, v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15

    .line 835
    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    :goto_3
    const/16 v21, 0x0

    const/16 v22, 0x1000

    :try_start_4
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v7

    .local v7, count:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_6

    .line 836
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v4, v0, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 852
    .end local v7           #count:I
    :catch_0
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .line 853
    .end local v4           #buffer:[B
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #szName:[Ljava/lang/String;
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v18           #zipEntryName:Ljava/lang/String;
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 857
    if-eqz v13, :cond_2

    .line 859
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 864
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_5
    if-eqz v5, :cond_3

    .line 866
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 871
    :cond_3
    :goto_6
    if-eqz v11, :cond_4

    .line 873
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 878
    :cond_4
    :goto_7
    if-eqz v19, :cond_5

    .line 880
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 886
    :cond_5
    :goto_8
    return-void

    .line 838
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #count:I
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #szName:[Ljava/lang/String;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v18       #zipEntryName:Ljava/lang/String;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :cond_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 839
    if-eqz v13, :cond_7

    .line 840
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 842
    :cond_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 854
    .end local v7           #count:I
    :catch_1
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .line 855
    .end local v4           #buffer:[B
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #szName:[Ljava/lang/String;
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v18           #zipEntryName:Ljava/lang/String;
    .local v9, e:Ljava/io/IOException;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    :goto_9
    :try_start_b
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 857
    if-eqz v13, :cond_8

    .line 859
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 864
    :cond_8
    :goto_a
    if-eqz v5, :cond_9

    .line 866
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 871
    :cond_9
    :goto_b
    if-eqz v11, :cond_a

    .line 873
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 878
    :cond_a
    :goto_c
    if-eqz v19, :cond_5

    .line 880
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_8

    .line 881
    :catch_2
    move-exception v9

    .line 882
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing zipInputStream"

    :goto_d
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 846
    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :cond_b
    if-eqz v12, :cond_c

    .line 847
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 849
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    .line 857
    if-eqz v14, :cond_d

    .line 859
    :try_start_11
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 864
    :cond_d
    :goto_e
    if-eqz v6, :cond_e

    .line 866
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 871
    :cond_e
    :goto_f
    if-eqz v12, :cond_f

    .line 873
    :try_start_13
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 878
    :cond_f
    :goto_10
    if-eqz v20, :cond_10

    .line 880
    :try_start_14
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    :cond_10
    :goto_11
    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .line 885
    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 857
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v21

    :goto_12
    if-eqz v13, :cond_11

    .line 859
    :try_start_15
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    .line 864
    :cond_11
    :goto_13
    if-eqz v5, :cond_12

    .line 866
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    .line 871
    :cond_12
    :goto_14
    if-eqz v11, :cond_13

    .line 873
    :try_start_17
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    .line 878
    :cond_13
    :goto_15
    if-eqz v19, :cond_14

    .line 880
    :try_start_18
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    .line 857
    :cond_14
    :goto_16
    throw v21

    .line 860
    :catch_3
    move-exception v9

    .line 861
    .restart local v9       #e:Ljava/io/IOException;
    const-string v22, "MessageDatabaseBackupActivity"

    const-string v23, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 867
    .end local v9           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 868
    .restart local v9       #e:Ljava/io/IOException;
    const-string v22, "MessageDatabaseBackupActivity"

    const-string v23, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 874
    .end local v9           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 875
    .restart local v9       #e:Ljava/io/IOException;
    const-string v22, "MessageDatabaseBackupActivity"

    const-string v23, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 881
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 882
    .restart local v9       #e:Ljava/io/IOException;
    const-string v22, "MessageDatabaseBackupActivity"

    const-string v23, "IOException caught while closing zipInputStream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 860
    .local v9, e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v9

    .line 861
    .local v9, e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 867
    .end local v9           #e:Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 868
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 874
    .end local v9           #e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 875
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 881
    .end local v9           #e:Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 882
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing zipInputStream"

    goto/16 :goto_d

    .line 860
    :catch_b
    move-exception v9

    .line 861
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 867
    :catch_c
    move-exception v9

    .line 868
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 874
    :catch_d
    move-exception v9

    .line 875
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 860
    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_e
    move-exception v9

    .line 861
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 867
    .end local v9           #e:Ljava/io/IOException;
    :catch_f
    move-exception v9

    .line 868
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing bufferedOutputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 874
    .end local v9           #e:Ljava/io/IOException;
    :catch_10
    move-exception v9

    .line 875
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing fileInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 881
    .end local v9           #e:Ljava/io/IOException;
    :catch_11
    move-exception v9

    .line 882
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "MessageDatabaseBackupActivity"

    const-string v22, "IOException caught while closing zipInputStream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 857
    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v21

    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #szName:[Ljava/lang/String;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v18       #zipEntryName:Ljava/lang/String;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_12

    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .line 854
    .end local v4           #buffer:[B
    .end local v10           #file:Ljava/io/File;
    .end local v16           #szName:[Ljava/lang/String;
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v18           #zipEntryName:Ljava/lang/String;
    :catch_12
    move-exception v9

    goto/16 :goto_9

    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    :catch_13
    move-exception v9

    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_14
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #szName:[Ljava/lang/String;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v18       #zipEntryName:Ljava/lang/String;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_15
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_9

    .line 852
    .end local v4           #buffer:[B
    .end local v10           #file:Ljava/io/File;
    .end local v16           #szName:[Ljava/lang/String;
    .end local v17           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v18           #zipEntryName:Ljava/lang/String;
    :catch_16
    move-exception v9

    goto/16 :goto_4

    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    :catch_17
    move-exception v9

    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_18
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v4       #buffer:[B
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #szName:[Ljava/lang/String;
    .restart local v17       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v18       #zipEntryName:Ljava/lang/String;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :catch_19
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zipInputStream:Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v11       #fileInputStream:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_4

    .end local v4           #buffer:[B
    .end local v5           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .end local v11           #fileInputStream:Ljava/io/FileInputStream;
    .end local v13           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v19           #zipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v6       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v14       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v20       #zipInputStream:Ljava/util/zip/ZipInputStream;
    :cond_15
    move-object v5, v6

    .end local v6           #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    .restart local v5       #bufferedOutputStream:Ljava/io/BufferedOutputStream;
    move-object v13, v14

    .end local v14           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "szEncPathName"
    .parameter "szZipPathName"

    .prologue
    .line 903
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DecryptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 904
    .local v0, ret:Z
    const-string v1, "MessageDatabaseBackupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecryptFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return v0
.end method

.method public ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "szZipPathName"
    .parameter "szEncPathName"

    .prologue
    .line 890
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->EncryptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 891
    .local v1, ret:Z
    if-eqz v1, :cond_0

    .line 893
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v0, deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 898
    .end local v0           #deleteFile:Ljava/io/File;
    :cond_0
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EncryptFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return v1
.end method

.method public DeleteDir(Ljava/lang/String;)V
    .locals 7
    .parameter "szPath"

    .prologue
    .line 909
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 911
    .local v2, childFileList:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 912
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 913
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 914
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    .line 912
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 920
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #childFile:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 921
    return-void
.end method

.method public DeleteDir(Ljava/io/File;)Z
    .locals 9
    .parameter "dir"

    .prologue
    const/4 v5, 0x0

    .line 619
    const/4 v0, 0x0

    .line 622
    .local v0, bDeleteResult:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 623
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, children:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 625
    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "deleteDir::children is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .end local v1           #children:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 629
    .restart local v1       #children:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, nI:I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 630
    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v3

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/io/File;)Z

    move-result v4

    .line 631
    .local v4, success:Z
    if-eqz v4, :cond_0

    .line 634
    const-string v6, "MessageDatabaseBackupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDir::children[nI]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is Delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    .end local v1           #children:[Ljava/lang/String;
    .end local v3           #nI:I
    .end local v4           #success:Z
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    move v5, v0

    .line 642
    goto :goto_0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MessageDatabaseBackupActivity"

    const-string v6, "deleteDir::"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public MessageDbBackup(Ljava/lang/String;)Z
    .locals 10
    .parameter "pathname"

    .prologue
    .line 483
    const/4 v6, 0x1

    .line 485
    .local v6, bReturn:Z
    const-string v0, "content://mms-sms/msgbackup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 486
    .local v9, uriContent:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "target_directory_path"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 488
    .local v1, uriBackup:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 490
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 495
    if-eqz v7, :cond_0

    .line 496
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_0
    return v6

    .line 491
    :catch_0
    move-exception v8

    .line 492
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageDatabaseBackupActivity"

    const-string v2, "MessageDbBackup Error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v6, 0x0

    .line 495
    if-eqz v7, :cond_0

    goto :goto_0

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 496
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_1
    throw v0
.end method

.method public MessageDbRestore(Ljava/lang/String;)Z
    .locals 8
    .parameter "pathname"

    .prologue
    .line 503
    const/4 v0, 0x1

    .line 505
    .local v0, bReturn:Z
    const-string v6, "content://mms-sms/msgrestore"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 506
    .local v4, uriContent:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "source_directory_path"

    invoke-virtual {v6, v7, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 508
    .local v5, uriRestore:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 509
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v2, cv:Landroid/content/ContentValues;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    if-eqz v1, :cond_0

    .line 517
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_0
    return v0

    .line 512
    :catch_0
    move-exception v3

    .line 513
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "MessageDbRestore Error"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    const/4 v0, 0x0

    .line 516
    if-eqz v1, :cond_0

    goto :goto_0

    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_1

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_1
    throw v6
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 405
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    if-nez v9, :cond_0

    .line 480
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v5, obj:Landroid/os/Bundle;
    iget v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 412
    :pswitch_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 413
    .local v4, msg_start:Landroid/os/Message;
    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 414
    const-string v9, "filename"

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    const/4 v6, 0x0

    .line 420
    .local v6, ret:Z
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbBackup(Ljava/lang/String;)Z

    move-result v6

    .line 422
    const-string v9, "/data/data/com.android.mms/"

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDataBackup(Ljava/lang/String;)V

    .line 424
    if-eqz v6, :cond_1

    .line 425
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 428
    :cond_1
    if-eqz v6, :cond_2

    .line 429
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 432
    :cond_2
    if-eqz v6, :cond_3

    .line 433
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, deleteDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 435
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    .line 438
    .end local v1           #deleteDirectory:Ljava/io/File;
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 439
    .local v3, msg_complete:Landroid/os/Message;
    if-eqz v6, :cond_4

    :goto_1
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 440
    const-string v7, "filename"

    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 442
    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    move v7, v8

    .line 439
    goto :goto_1

    .line 448
    .end local v3           #msg_complete:Landroid/os/Message;
    .end local v4           #msg_start:Landroid/os/Message;
    .end local v6           #ret:Z
    :pswitch_1
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 449
    .restart local v4       #msg_start:Landroid/os/Message;
    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 450
    const-string v9, "filename"

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    const/4 v6, 0x0

    .line 455
    .restart local v6       #ret:Z
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 457
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 458
    if-eqz v6, :cond_5

    .line 459
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    const-string v10, "/mnt/sdcard/MMS_BACKUP"

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const v10, 0x7f0b0174

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 462
    .local v0, chkRestore:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 463
    const-string v9, "/mnt/sdcard/MMS_BACKUP/"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbRestore(Ljava/lang/String;)Z

    .line 470
    .end local v0           #chkRestore:Landroid/widget/CheckBox;
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 471
    .restart local v3       #msg_complete:Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 472
    if-eqz v6, :cond_7

    :goto_3
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 473
    const-string v7, "filename"

    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 467
    .end local v3           #msg_complete:Landroid/os/Message;
    :cond_6
    const-string v9, "MessageDatabaseBackupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "szEncPathName("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") isn\'t founded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .restart local v3       #msg_complete:Landroid/os/Message;
    :cond_7
    move v7, v8

    .line 472
    goto :goto_3

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "workmode"
    .parameter "pathname"
    .parameter "filename"

    .prologue
    .line 397
    iput p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    .line 398
    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    .line 399
    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/MMS_BACKUP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/MMS_BACKUP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".edb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    .line 402
    return-void
.end method
