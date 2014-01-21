.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .parameter "context"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "toReplaceMedia"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f020086

    const/4 v9, 0x5

    const/4 v3, 0x1

    const v4, 0x7f0c00a9

    const/4 v1, 0x0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-nez p1, :cond_d

    .line 52
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 58
    :cond_0
    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 60
    const-string v1, "com.sec.android.gallery3d"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v1, "com.cooliris.media"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v1, "com.android.gallery3d"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 69
    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 72
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 77
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string v0, "com.sec.android.app.voicenote"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 84
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    const v3, 0x7f0c0120

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 89
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    const-string v0, "com.sec.android.app.memo"

    const/16 v1, 0x8

    const v3, 0x7f0c0121

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 94
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v1, 0xb

    const v3, 0x7f0c0190

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 103
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    const-string v0, "com.sec.android.app.snotebook"

    const/16 v1, 0xd

    const v3, 0x7f0c0191

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    const-string v0, "com.samsung.android.snote"

    const/16 v1, 0xd

    const v3, 0x7f0c0191

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 109
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_8

    .line 110
    const/4 v7, 0x0

    .line 111
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 113
    .local v8, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 118
    :goto_0
    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    if-eqz v8, :cond_c

    .end local v8           #label:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v0, v2, v1, v8}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    .line 122
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_9

    .line 123
    const-string v0, "com.android.task"

    const/16 v1, 0x9

    const v3, 0x7f0c016e

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 127
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 128
    const-string v0, "com.google.android.apps.maps"

    const/16 v1, 0xa

    const v3, 0x7f0c016f

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 131
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_b

    .line 132
    const-string v0, "com.android.contacts"

    const/4 v1, 0x6

    const v3, 0x7f0c011f

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 167
    :cond_b
    :goto_2
    return-object v2

    .line 115
    .restart local v7       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #label:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 116
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v3, 0x7f0c018d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 135
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    .end local v8           #label:Ljava/lang/String;
    :cond_d
    const/16 v0, 0xa

    if-eq p2, v0, :cond_e

    const/16 v0, 0xb

    if-ne p2, v0, :cond_10

    .line 136
    :cond_e
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 137
    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 139
    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 143
    :cond_f
    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 144
    const-string v1, "com.sec.android.app.myfiles"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 147
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_2

    .line 150
    :cond_10
    const/16 v0, 0xc

    if-ne p2, v0, :cond_12

    .line 151
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 152
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 156
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    const-string v0, "com.sec.android.app.voicenote"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_2

    .line 162
    :cond_12
    const/16 v0, 0xe

    if-ne p2, v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020083

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_2
.end method
