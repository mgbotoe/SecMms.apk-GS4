.class public Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

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
    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 13
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
    const v7, 0x7f020086

    const/4 v12, 0x5

    const/4 v11, 0x1

    const v6, 0x7f0c00a9

    const/4 v3, 0x0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-nez p1, :cond_d

    .line 52
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 61
    :cond_0
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 64
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 76
    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ac

    const v7, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 79
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ae

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    const-string v1, "com.sec.android.app.voicenote"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ae

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 91
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    const v6, 0x7f0c0120

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 96
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    const-string v1, "com.sec.android.app.memo"

    const/16 v3, 0x8

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v4

    const v6, 0x7f0c0121

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 101
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v3, 0xb

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v4

    const v6, 0x7f0c0190

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 106
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    const-string v1, "com.sec.android.app.snotebook"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c0191

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    const-string v1, "com.samsung.android.snote"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c0191

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 112
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    const/4 v9, 0x0

    .line 114
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 116
    .local v10, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 121
    :goto_0
    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    if-eqz v10, :cond_c

    move-object v6, v10

    :goto_1
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;)Z

    .line 126
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    const-string v1, "com.android.task"

    const/16 v3, 0x9

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v4

    const v6, 0x7f0c016e

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 131
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 132
    const-string v1, "com.google.android.apps.maps"

    const/16 v3, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 138
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    const-string v1, "com.android.contacts"

    const/4 v3, 0x6

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v4

    const v6, 0x7f0c011f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 180
    :cond_b
    :goto_2
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    return-object v2

    .line 118
    .restart local v9       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #label:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 119
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 143
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/String;
    :cond_d
    const/16 v0, 0xa

    if-eq p2, v0, :cond_e

    const/16 v0, 0xb

    if-ne p2, v0, :cond_10

    .line 144
    :cond_e
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_f

    .line 146
    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_f

    .line 148
    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 153
    :cond_f
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    .line 155
    const-string v1, "com.sec.android.app.myfiles"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 158
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ac

    const v7, 0x7f020082

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto :goto_2

    .line 161
    :cond_10
    const/16 v0, 0xc

    if-ne p2, v0, :cond_12

    .line 162
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020084

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    .line 168
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ae

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 171
    const-string v1, "com.sec.android.app.voicenote"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ae

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    goto/16 :goto_2

    .line 174
    :cond_12
    const/16 v0, 0xe

    if-ne p2, v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_2
.end method
