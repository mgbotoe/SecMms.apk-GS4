.class public Lcom/android/mms/ui/IconWeightListAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "IconWeightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/IconWeightListAdapter"

.field private static sAddAvatar:J

.field private static sAddDrawingPad:J

.field private static sAddimage:J

.field private static sAddlocation:J

.field private static sAddsmemo:J

.field private static sAddsnote:J

.field private static sAddsound:J

.field private static sAddvcal:J

.field private static sAddvcard:J

.field private static sAddvideo:J

.field private static sAddvnote:J

.field private static sAddvtodo:J

.field protected static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordsound:J

.field private static sRecordvideo:J

.field private static sTakepicture:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 40
    new-instance v0, Lcom/android/mms/ui/IconWeightListAdapter$1;

    invoke-direct {v0}, Lcom/android/mms/ui/IconWeightListAdapter$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/IconWeightListAdapter;->sComparator:Ljava/util/Comparator;

    .line 48
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    .line 49
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    .line 50
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    .line 51
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    .line 52
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    .line 53
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    .line 54
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    .line 55
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    .line 56
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    .line 57
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    .line 58
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    .line 59
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    .line 60
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    .line 61
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    .line 62
    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v0, 0x7f040042

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    return-void
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "command"
    .parameter "weight"
    .parameter "menuNameId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJI)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_0
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, menuName:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    move-object v0, p2

    move v3, p3

    move-wide v4, p4

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "command"
    .parameter "weight"
    .parameter "menuNameId"
    .parameter "icondId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJII)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v2, 0x0

    .line 112
    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, menuName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, p2

    move v3, p3

    move-wide v4, p4

    .line 124
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 121
    const-string v0, "Mms/IconWeightListAdapter"

    const-string v3, "OutOfMemoryError caught @ getResources().getDrawable and throw"

    invoke-static {v0, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    throw v6
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "command"
    .parameter "weight"
    .parameter "menuName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJ",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    move-object v0, p2

    move-object v1, p6

    move v3, p3

    move-wide v4, p4

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V
    .locals 6
    .parameter
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method private static addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z
    .locals 2
    .parameter
    .parameter "menuName"
    .parameter "appIcon"
    .parameter "command"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v0, 0x0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-eqz p2, :cond_0

    .line 131
    invoke-static/range {p0 .. p5}, Lcom/android/mms/ui/IconWeightListAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static getAddAvatar()J
    .locals 2

    .prologue
    .line 239
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    return-wide v0
.end method

.method protected static getAddDrawingPad()J
    .locals 2

    .prologue
    .line 291
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    return-wide v0
.end method

.method protected static getAddLocation()J
    .locals 2

    .prologue
    .line 279
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    return-wide v0
.end method

.method protected static getAddimage()J
    .locals 2

    .prologue
    .line 235
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    return-wide v0
.end method

.method protected static getAddsmemo()J
    .locals 2

    .prologue
    .line 283
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    return-wide v0
.end method

.method protected static getAddsnote()J
    .locals 2

    .prologue
    .line 287
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    return-wide v0
.end method

.method protected static getAddsound()J
    .locals 2

    .prologue
    .line 247
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    return-wide v0
.end method

.method protected static getAddvcal()J
    .locals 2

    .prologue
    .line 267
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    return-wide v0
.end method

.method protected static getAddvcard()J
    .locals 2

    .prologue
    .line 263
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    return-wide v0
.end method

.method protected static getAddvideo()J
    .locals 2

    .prologue
    .line 243
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    return-wide v0
.end method

.method protected static getAddvnote()J
    .locals 2

    .prologue
    .line 271
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    return-wide v0
.end method

.method protected static getAddvtodo()J
    .locals 2

    .prologue
    .line 275
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    return-wide v0
.end method

.method protected static getRecordsound()J
    .locals 2

    .prologue
    .line 259
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    return-wide v0
.end method

.method protected static getRecordvideo()J
    .locals 2

    .prologue
    .line 255
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    return-wide v0
.end method

.method protected static getTakepicture()J
    .locals 2

    .prologue
    .line 251
    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    return-wide v0
.end method

.method public static loadWeight(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    .line 295
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "ADD_IMAGE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    .line 298
    const-string v1, "ADD_VIDEO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    .line 299
    const-string v1, "ADD_SOUND_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    .line 300
    const-string v1, "TAKE_PICTURE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    .line 301
    const-string v1, "RECORD_VIDEO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    .line 302
    const-string v1, "RECORD_SOUND_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    .line 303
    const-string v1, "ADD_VCARD_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    .line 304
    const-string v1, "ADD_VCAL_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    .line 305
    const-string v1, "ADD_VNOTE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    .line 306
    const-string v1, "ADD_VTODO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    .line 307
    const-string v1, "ADD_LOCATION_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    .line 308
    const-string v1, "ADD_SMEMO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    .line 309
    const-string v1, "ADD_DRAWINGPAD_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    .line 310
    const-string v1, "ADD_SNOTE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    .line 311
    const-string v1, "ADD_AVATAR_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    .line 312
    return-void
.end method

.method public static updateWeight(Landroid/content/Context;I)V
    .locals 8
    .parameter "applicationContext"
    .parameter "type"

    .prologue
    const-wide/16 v6, 0x1

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, key:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 144
    .local v2, newWeight:J
    packed-switch p1, :pswitch_data_0

    .line 220
    const/4 v1, 0x0

    .line 224
    :goto_0
    if-nez v1, :cond_0

    .line 225
    const-string v4, "Mms/IconWeightListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeight, Unsupported type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    return-void

    .line 146
    :pswitch_0
    const-string v1, "ADD_AVATAR_key"

    .line 147
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddAvatar()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 148
    goto :goto_0

    .line 151
    :pswitch_1
    const-string v1, "ADD_IMAGE_key"

    .line 152
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 153
    goto :goto_0

    .line 156
    :pswitch_2
    const-string v1, "TAKE_PICTURE_key"

    .line 157
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 158
    goto :goto_0

    .line 161
    :pswitch_3
    const-string v1, "ADD_VIDEO_key"

    .line 162
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 163
    goto :goto_0

    .line 166
    :pswitch_4
    const-string v1, "RECORD_VIDEO_key"

    .line 167
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 168
    goto :goto_0

    .line 171
    :pswitch_5
    const-string v1, "ADD_SOUND_key"

    .line 172
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 173
    goto :goto_0

    .line 176
    :pswitch_6
    const-string v1, "RECORD_SOUND_key"

    .line 177
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 178
    goto :goto_0

    .line 181
    :pswitch_7
    const-string v1, "ADD_VCARD_key"

    .line 182
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 183
    goto :goto_0

    .line 186
    :pswitch_8
    const-string v1, "ADD_VCAL_key"

    .line 187
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 188
    goto :goto_0

    .line 190
    :pswitch_9
    const-string v1, "ADD_VNOTE_key"

    .line 191
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 192
    goto :goto_0

    .line 195
    :pswitch_a
    const-string v1, "ADD_VTODO_key"

    .line 196
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 197
    goto :goto_0

    .line 200
    :pswitch_b
    const-string v1, "ADD_LOCATION_key"

    .line 201
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 202
    goto/16 :goto_0

    .line 205
    :pswitch_c
    const-string v1, "ADD_SMEMO_key"

    .line 206
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 207
    goto/16 :goto_0

    .line 210
    :pswitch_d
    const-string v1, "ADD_SNOTE_key"

    .line 211
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 212
    goto/16 :goto_0

    .line 215
    :pswitch_e
    const-string v1, "ADD_DRAWINGPAD_key"

    .line 216
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddDrawingPad()J

    move-result-wide v4

    add-long v2, v4, v6

    .line 217
    goto/16 :goto_0

    .line 227
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    const-string v4, "Mms/IconWeightListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeight,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method
