.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;
.super Ljava/lang/Object;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CryptoClass"
.end annotation


# static fields
.field private static final algorithm:Ljava/lang/String; = "AES"

.field private static final default_alg_mode:Ljava/lang/String; = "AES/ECB/PKCS5Padding"


# instance fields
.field private mKey:Ljava/security/Key;

.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->mKey:Ljava/security/Key;

    .line 978
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;)V

    return-void
.end method

.method private Crypto(ILjava/io/File;Ljava/io/File;)Z
    .locals 10
    .parameter "modeCrypto"
    .parameter "srcFile"
    .parameter "desFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v0, 0x1

    .line 1005
    .local v0, bReturn:Z
    const-string v9, "AES/ECB/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1006
    .local v2, cipher:Ljavax/crypto/Cipher;
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->mKey:Ljava/security/Key;

    invoke-virtual {v2, p1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1008
    const/4 v4, 0x0

    .line 1009
    .local v4, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1012
    .local v6, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 1013
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 1015
    .end local v6           #os:Ljava/io/OutputStream;
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()I

    move-result v9

    new-array v1, v9, [B

    .line 1016
    .local v1, buffer:[B
    const/4 v8, -0x1

    .line 1017
    .local v8, readCnt:I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 1018
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v8}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1021
    .end local v1           #buffer:[B
    .end local v8           #readCnt:I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v4, v5

    .line 1022
    .end local v5           #is:Ljava/io/InputStream;
    .local v3, ex:Ljava/lang/Exception;
    .restart local v4       #is:Ljava/io/InputStream;
    :goto_1
    const/4 v0, 0x0

    .line 1025
    if-eqz v6, :cond_0

    .line 1027
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1032
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1034
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1042
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return v0

    .line 1020
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v8       #readCnt:I
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1025
    if-eqz v7, :cond_3

    .line 1027
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1032
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 1034
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_5
    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v4, v5

    .line 1040
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 1025
    .end local v1           #buffer:[B
    .end local v8           #readCnt:I
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v6, :cond_5

    .line 1027
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1032
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 1034
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1025
    :cond_6
    :goto_8
    throw v9

    .line 1028
    .restart local v3       #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1029
    const/4 v0, 0x0

    goto :goto_2

    .line 1035
    :catch_2
    move-exception v3

    .line 1036
    const/4 v0, 0x0

    goto :goto_3

    .line 1028
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1029
    .restart local v3       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_7

    .line 1035
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 1036
    .restart local v3       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_8

    .line 1028
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v8       #readCnt:I
    :catch_5
    move-exception v3

    .line 1029
    .restart local v3       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_4

    .line 1035
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 1036
    .restart local v3       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_5

    .line 1025
    .end local v1           #buffer:[B
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v8           #readCnt:I
    .restart local v6       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_6

    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 1021
    :catch_7
    move-exception v3

    goto :goto_1

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private Decription(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .parameter "srcFile"
    .parameter "desFile"

    .prologue
    .line 992
    const/4 v0, 0x1

    .line 994
    .local v0, bReturn:Z
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Crypto(ILjava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 999
    :goto_0
    return v0

    .line 995
    :catch_0
    move-exception v1

    .line 996
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Encryption(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .parameter "srcFile"
    .parameter "desFile"

    .prologue
    .line 981
    const/4 v0, 0x1

    .line 983
    .local v0, bReturn:Z
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Crypto(ILjava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 988
    :goto_0
    return v0

    .line 984
    :catch_0
    move-exception v1

    .line 985
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 986
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Encryption(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Decription(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
