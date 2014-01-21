.class public Lcom/android/mms/util/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# static fields
.field private static final ACTION_VCARD_PREVIEW:Ljava/lang/String; = "com.sec.android.app.contacts.action.VCARD_PREVIEW"

.field private static final ACTIVITY_GALLERY3D:Ljava/lang/String; = "com.sec.android.gallery3d.app.Gallery"

.field public static final ACTIVITY_MOVIE_PLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer.activity.MoviePlayer"

.field private static final ACTIVITY_VCAL_IMPORT:Ljava/lang/String; = "com.android.calendar.vcal.VCalListActivity"

.field public static final ACTIVITY_VCARD_IMPORT:Ljava/lang/String; = "com.android.contacts.vcard.ImportVCardActivity"

.field public static final ACTIVITY_VCARD_PREVIEW:Ljava/lang/String; = "com.android.contacts.vcard.ImportVCardPreviewActivity"

.field private static final ACTIVITY_VTASK_IMPORT:Ljava/lang/String; = "com.android.calendar.vcal.VTaskListActivity"

.field public static final AVATAR:Ljava/lang/String; = "com.acrodea.samsung_avatar_maker"

.field public static final BROWSER:Ljava/lang/String; = "com.android.browser"

.field public static final CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field public static final CAMERA:Ljava/lang/String; = "com.sec.android.app.camera"

.field public static final CONTACT:Ljava/lang/String; = "com.android.contacts"

.field public static final DRAWINGPAD:Ljava/lang/String; = "com.sec.android.app.drawingpad"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field public static final GALLERY:Ljava/lang/String; = "com.cooliris.media"

.field public static final GALLERY3D:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final GOOGLE_GALLERY3D:Ljava/lang/String; = "com.android.gallery3d"

.field public static final GOOGLE_SOUNDRECORDER:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final JCONTACT:Ljava/lang/String; = "com.android.jcontacts"

.field public static final MAP:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final MEMO:Ljava/lang/String; = "com.sec.android.app.memo"

.field public static final MEMO_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.memo.MemoAddTextActivity"

.field public static final MYFILES:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field public static final MYFILES_ACTION_PICK:Ljava/lang/String; = "com.sec.android.app.myfiles.PICK_DATA"

.field public static final PHONE:Ljava/lang/String; = "com.android.phone"

.field public static final SANOTI_PROVIDER:Ljava/lang/String; = "com.samsung.accessory.sanotiprovider"

.field public static final SBROWSER:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final SETINGS:Ljava/lang/String; = "com.android.settings"

.field public static final SMEMO:Ljava/lang/String; = "com.sec.android.widgetapp.diotek.smemo"

.field public static final SNOTE:Ljava/lang/String; = "com.sec.android.app.snotebook"

.field public static final SNOTE3:Ljava/lang/String; = "com.samsung.android.snote"

.field private static final TAG:Ljava/lang/String; = "Mms/PackageInfo"

.field public static final TASK:Ljava/lang/String; = "com.android.task"

.field public static final TTS_SETINGS:Ljava/lang/String; = "com.android.settings.TextToSpeechSettings"

.field public static final VIDEOPLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer"

.field public static final VOICENOTE:Ljava/lang/String; = "com.sec.android.app.voicenote"

.field public static final VOICERECORDER:Ljava/lang/String; = "com.sec.android.app.voicerecorder"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/mms/util/PackageInfo;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callCalendarImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 221
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.calendar"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.vcal.VCalListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 227
    return-void
.end method

.method public static callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 275
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 277
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :cond_0
    const-string v1, "android.intent.extra.showActionIcons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v1, "single_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 284
    return-void
.end method

.method public static callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"
    .parameter "editingMode"

    .prologue
    const/4 v3, 0x1

    .line 287
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_0
    const-string v1, "android.intent.extra.showActionIcons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-string v1, "single_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    if-eqz p3, :cond_1

    .line 295
    const-string v1, "NotSupportSaveMenu"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    :cond_1
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 299
    return-void
.end method

.method public static callMusicPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 206
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 210
    return-void
.end method

.method public static callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 200
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 202
    return-void
.end method

.method public static callTaskImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 230
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.calendar"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.vcal.VTaskListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 236
    return-void
.end method

.method public static callVContactImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 248
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showDetail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.vcard.ImportVCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 255
    return-void
.end method

.method public static callVContactList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 264
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForVContact(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showDetail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.vcard.ImportVCardPreviewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 272
    return-void
.end method

.method public static callVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/android/mms/util/PackageInfo;->setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.videoplayer"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "com.sec.android.app.videoplayer.activity.MoviePlayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 218
    return-void
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 360
    const-string v4, ""

    .line 362
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 363
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/mms/util/PackageInfo;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 364
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 369
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 370
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method public static getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "url"

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser.application_id"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 322
    return-object v0
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, enable:I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 125
    :cond_0
    const-string v3, "Mms/PackageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0           #enable:I
    :goto_0
    return v2

    .line 128
    .restart local v0       #enable:I
    :cond_1
    const-string v3, "Mms/PackageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #enable:I
    :catch_0
    move-exception v1

    .line 132
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "Mms/PackageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInstalledPkg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "cls"

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 108
    const-string v1, "Mms/PackageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 113
    const-string v1, "Mms/PackageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledSvc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "cls"

    .prologue
    const/4 v2, 0x0

    .line 92
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v1, pgkComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 94
    const-string v3, "Mms/PackageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v2, 0x1

    .line 102
    .end local v1           #pgkComponent:Landroid/content/ComponentName;
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 99
    const-string v3, "Mms/PackageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isTalkBackAvailable(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 326
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 327
    .local v1, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 328
    .local v6, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 330
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_enabled"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1

    move v0, v9

    .line 333
    .local v0, accessibilityEnabled:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 334
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 335
    .local v5, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v5, :cond_4

    .line 336
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v8, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 337
    .local v8, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v2, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v7, v9

    .line 340
    .local v7, serviceEnabled:Z
    :goto_2
    if-eqz v7, :cond_3

    .line 341
    const-string v10, "Mms/PackageInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " On"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 350
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v5           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7           #serviceEnabled:Z
    .end local v8           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_3
    return v10

    .end local v0           #accessibilityEnabled:Z
    .end local v4           #i:I
    :cond_1
    move v0, v10

    .line 330
    goto :goto_0

    .restart local v0       #accessibilityEnabled:Z
    .restart local v2       #componentName:Landroid/content/ComponentName;
    .restart local v4       #i:I
    .restart local v5       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v8       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    move v7, v10

    .line 338
    goto :goto_2

    .line 344
    .restart local v7       #serviceEnabled:Z
    :cond_3
    const-string v9, "Mms/PackageInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Off"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 333
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v7           #serviceEnabled:Z
    .end local v8           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static openVContact(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 240
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVcardView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p0, p1, p2}, Lcom/android/mms/util/PackageInfo;->callVContactList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/mms/util/PackageInfo;->callVContactImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIntentForMedia(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    return-object v0
.end method

.method public static setIntentForVContact(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.VCARD_PREVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    return-object v0
.end method

.method public static startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z
    .locals 5
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Mms/PackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 187
    const/4 v2, 0x0

    goto :goto_1

    .line 188
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    if-ne v2, v3, :cond_0

    .line 190
    const-string v2, "Mms/PackageInfo"

    const-string v3, "Call privilige not permitted, use ACTION_CALL instead"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Mms/PackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    const/4 v2, 0x0

    goto :goto_1

    .line 147
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    if-ne v2, v3, :cond_0

    .line 149
    const-string v2, "Mms/PackageInfo"

    const-string v3, "Call privilige not permitted, use ACTION_CALL instead"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static startActivityForVideoCall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Mms/PackageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    if-ne v3, v4, :cond_0

    .line 169
    const-string v3, "Mms/PackageInfo"

    const-string v4, "Call privilige not permitted, use ACTION_CALL instead"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v3, "videocall"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
