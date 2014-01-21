.class public Lcom/android/mms/ui/AddTextGridAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "AddTextGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-static {p1}, Lcom/android/mms/ui/AddTextGridAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v11, 0x7f0c0191

    const v10, 0x7f0c011f

    const/16 v9, 0x10

    const/16 v8, 0xf

    const/16 v7, 0xd

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    const-string v4, "com.android.calendar"

    const v5, 0x7f0c0120

    invoke-static {p0, v4, v0, v9, v5}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    const-string v4, "com.sec.android.app.memo"

    const/16 v5, 0x11

    const v6, 0x7f0c0121

    invoke-static {p0, v4, v0, v5, v6}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 34
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 35
    const-string v4, "com.android.task"

    const/16 v5, 0x12

    const v6, 0x7f0c016e

    invoke-static {p0, v4, v0, v5, v6}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 38
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 39
    const-string v4, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    const-string v4, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v5, 0xb

    const v6, 0x7f0c0190

    invoke-static {p0, v4, v0, v5, v6}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 46
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    const-string v4, "com.sec.android.app.snotebook"

    invoke-static {p0, v4, v0, v7, v11}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 48
    const-string v4, "com.samsung.android.snote"

    invoke-static {p0, v4, v0, v7, v11}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 51
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.calendar"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 55
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 59
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string v4, "com.android.calendar"

    if-eqz v3, :cond_8

    .end local v3           #label:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v4, v0, v9, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    .line 63
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-nez v4, :cond_6

    .line 64
    const-string v4, "com.google.android.apps.maps"

    const/16 v5, 0xa

    const v6, 0x7f0c016f

    invoke-static {p0, v4, v0, v5, v6}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 67
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 68
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.jcontacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 69
    const-string v4, "com.android.jcontacts"

    invoke-static {p0, v4, v0, v8, v10}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 76
    :cond_7
    :goto_2
    const v4, 0x7f0c0209

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02010e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0x13

    invoke-static {v0, v4, v5, v6}, Lcom/android/mms/ui/AddTextGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 80
    return-object v0

    .line 56
    .restart local v3       #label:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    const v5, 0x7f0c018d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 71
    .end local v3           #label:Ljava/lang/String;
    :cond_9
    const-string v4, "com.android.contacts"

    invoke-static {p0, v4, v0, v8, v10}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_2
.end method
