.class public Lcom/android/mms/ui/AttachmentTypeGridAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "AttachmentTypeGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .parameter "context"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 44
    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 11
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
    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v3, 0x1

    const v4, 0x7f0c00a9

    const/4 v1, 0x0

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-nez p1, :cond_e

    .line 51
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 57
    :cond_0
    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 59
    const-string v1, "com.sec.android.gallery3d"

    const v4, 0x7f0c00ab

    const v5, 0x7f020086

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v1, "com.cooliris.media"

    const v4, 0x7f0c00ab

    const v5, 0x7f020086

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const-string v1, "com.android.gallery3d"

    const v4, 0x7f0c00ab

    const v5, 0x7f020086

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 68
    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 71
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 76
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    const-string v0, "com.sec.android.app.voicenote"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 83
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    const v3, 0x7f0c0120

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 88
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    const-string v0, "com.sec.android.app.memo"

    const/16 v1, 0x8

    const v3, 0x7f0c0121

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 93
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v1, 0xb

    const v3, 0x7f0c0190

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 102
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    const-string v0, "com.sec.android.app.snotebook"

    const/16 v1, 0xd

    const v3, 0x7f0c0191

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    const-string v0, "com.samsung.android.snote"

    const/16 v1, 0xd

    const v3, 0x7f0c0191

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 108
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_8

    .line 109
    const/4 v8, 0x0

    .line 111
    .local v8, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 112
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 116
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v8, :cond_c

    .line 117
    :goto_1
    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    invoke-static {p0, v0, v2, v1, v8}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    .line 120
    .end local v8           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_9

    .line 121
    const-string v0, "com.android.task"

    const/16 v1, 0x9

    const v3, 0x7f0c016e

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 124
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 126
    const-string v1, "com.google.android.apps.maps"

    const v4, 0x7f0c016f

    const v5, 0x7f020085

    move-object v0, p0

    move v3, v10

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 133
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_b

    .line 134
    const-string v0, "com.android.contacts"

    const/4 v1, 0x6

    const v3, 0x7f0c011f

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 173
    :cond_b
    :goto_3
    return-object v2

    .line 113
    .restart local v8       #label:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 114
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 129
    .end local v8           #label:Ljava/lang/String;
    :cond_d
    const-string v0, "com.google.android.apps.maps"

    const v1, 0x7f0c016f

    invoke-static {p0, v0, v2, v10, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_2

    .line 138
    :cond_e
    if-eq p2, v10, :cond_f

    const/16 v0, 0xb

    if-ne p2, v0, :cond_11

    .line 139
    :cond_f
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 141
    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 143
    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 148
    :cond_10
    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 150
    const-string v1, "com.sec.android.app.myfiles"

    const v4, 0x7f0c00ab

    const v5, 0x7f020086

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 153
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_3

    .line 156
    :cond_11
    const/16 v0, 0xc

    if-ne p2, v0, :cond_13

    .line 157
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 158
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 162
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 165
    const-string v0, "com.sec.android.app.voicenote"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto/16 :goto_3

    .line 168
    :cond_13
    const/16 v0, 0xe

    if-ne p2, v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 170
    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v2, v0, v1, v10}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_3
.end method
