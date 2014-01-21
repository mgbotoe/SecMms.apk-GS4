.class public Lcom/android/mms/util/IMSUtils;
.super Ljava/lang/Object;
.source "IMSUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/IMSUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerImsReceiver(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;Z)Z
    .locals 12
    .parameter "context"
    .parameter "registered"
    .parameter "receiver"
    .parameter "lowSignal"

    .prologue
    .line 14
    const-string v4, "IMS_LOWSIGNAL"

    .line 15
    .local v4, imsLowSignal:Ljava/lang/String;
    const-string v2, "CELL_ONLY"

    .line 16
    .local v2, cellOnly:Ljava/lang/String;
    move v6, p3

    .line 17
    .local v6, isLowSignal:Z
    const/4 v5, 0x1

    .line 19
    .local v5, isCellOnly:Z
    :try_start_0
    const-string v7, "com.movial.ipphone.IPUtils"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "IMS_LOWSIGNAL"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 20
    const-string v7, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "CELL_ONLY"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 21
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v1, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v1, v7

    .line 22
    .local v1, argTypes:[Ljava/lang/Class;
    const-string v7, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getBoolean"

    invoke-virtual {v7, v8, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 28
    .end local v1           #argTypes:[Ljava/lang/Class;
    :goto_0
    if-nez v5, :cond_1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    :try_start_1
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :goto_1
    return v6

    .line 25
    :catch_0
    move-exception v3

    .line 26
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "Mms/IMSUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 34
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 35
    :catch_1
    move-exception v3

    .line 36
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "Mms/IMSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerImsReceiver FAILED. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
