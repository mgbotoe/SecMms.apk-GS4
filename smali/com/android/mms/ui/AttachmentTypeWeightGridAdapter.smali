.class public Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    const v0, 0x7f040041

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .parameter "context"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 42
    const v0, 0x7f040041

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 16
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
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const-wide/16 v5, 0x0

    .line 50
    .local v5, weight:J
    if-nez p1, :cond_f

    .line 51
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v5

    .line 52
    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v5

    .line 62
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00aa

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 65
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v5

    .line 66
    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020086

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string v2, "com.cooliris.media"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020086

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020086

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v5

    .line 78
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00ac

    const v8, 0x7f020082

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 81
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v5

    .line 83
    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00ad

    const v8, 0x7f020084

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 87
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v5

    .line 89
    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 95
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    .line 97
    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    const v7, 0x7f0c0120

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 101
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v5

    .line 103
    const-string v2, "com.sec.android.app.memo"

    const/16 v4, 0x8

    const v7, 0x7f0c0121

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 107
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v5

    .line 109
    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v4, 0xb

    const v7, 0x7f0c0190

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 113
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v5

    .line 115
    const-string v2, "com.sec.android.app.snotebook"

    const/16 v4, 0xd

    const v7, 0x7f0c0191

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_7

    .line 117
    const-string v2, "com.samsung.android.snote"

    const/16 v4, 0xd

    const v7, 0x7f0c0191

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 120
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    .line 122
    const/4 v14, 0x0

    .line 123
    .local v14, info:Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x0

    .line 125
    .local v15, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 130
    :goto_0
    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    if-eqz v15, :cond_d

    move-object v7, v15

    :goto_1
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;)Z

    .line 135
    .end local v14           #info:Landroid/content/pm/ApplicationInfo;
    .end local v15           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 136
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v5

    .line 137
    const-string v2, "com.android.task"

    const/16 v4, 0x9

    const v7, 0x7f0c016e

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 141
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 142
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v5

    .line 143
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 144
    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0xa

    const v7, 0x7f0c016f

    const v8, 0x7f020085

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 155
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v5

    .line 157
    const-string v2, "com.android.contacts"

    const/4 v4, 0x6

    const v7, 0x7f0c011f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 160
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAvatarAttachMenu()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 161
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddAvatar()J

    move-result-wide v5

    .line 162
    const-string v2, "com.acrodea.samsung_avatar_maker"

    const/16 v4, 0xe

    const v7, 0x7f0c03c1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 207
    :cond_c
    :goto_3
    sget-object v1, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    return-object v3

    .line 127
    .restart local v14       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v15       #label:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 128
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    const v1, 0x7f0c018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 149
    .end local v14           #info:Landroid/content/pm/ApplicationInfo;
    .end local v15           #label:Ljava/lang/String;
    :cond_e
    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0xa

    const v7, 0x7f0c016f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    goto :goto_2

    .line 166
    :cond_f
    const/16 v1, 0xa

    move/from16 v0, p2

    if-eq v0, v1, :cond_10

    const/16 v1, 0xb

    move/from16 v0, p2

    if-ne v0, v1, :cond_13

    .line 167
    :cond_10
    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_11

    .line 169
    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_11

    .line 171
    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 175
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAvatarAttachMenu()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 176
    const-string v2, "com.acrodea.samsung_avatar_maker"

    const/16 v4, 0xe

    const v7, 0x7f0c03c1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 180
    :cond_12
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00aa

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 182
    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020086

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 185
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00ac

    const v8, 0x7f020082

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_3

    .line 188
    :cond_13
    const/16 v1, 0xc

    move/from16 v0, p2

    if-ne v0, v1, :cond_15

    .line 189
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 190
    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00ad

    const v8, 0x7f020084

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 195
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_c

    .line 198
    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    goto/16 :goto_3

    .line 201
    :cond_15
    const/16 v1, 0xe

    move/from16 v0, p2

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 203
    const v1, 0x7f0c016f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xa

    move-object v7, v3

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_3
.end method
