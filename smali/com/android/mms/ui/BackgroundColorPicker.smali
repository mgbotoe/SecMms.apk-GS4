.class public Lcom/android/mms/ui/BackgroundColorPicker;
.super Lcom/android/mms/ui/MessageBubbleActivity;
.source "BackgroundColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;
    }
.end annotation


# static fields
.field public static final ADD_IMAGE:I = 0x0

.field private static final BACKGROUND_TYPE:I = 0x0

.field private static final BACKGROUND_VERTICAL_TYPE:I = 0x1

.field private static DEVICE_SCREEN_HEIGHT_SIZE:I = 0x0

.field private static DEVICE_SCREEN_WIDTH_SIZE:I = 0x0

.field private static final NEW_PHOTO_DIR_PATH:Ljava/lang/String; = null

.field private static final PHOTO_DATE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x3e9

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x3ea

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BackgroundColorPicker"

.field public static final TAKE_PICTURE:I = 0x1

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private mBackgroundDialog:Landroid/app/AlertDialog;

.field private mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnableAnimation:Z

.field private mImageOutputUri:Landroid/net/Uri;

.field private mIsAnimating:Z

.field private mIsStartFromNonCustom:Z

.field private mMenuSave:Landroid/view/MenuItem;

.field private mSaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    .line 89
    const/16 v0, 0x320

    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 90
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 379
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    .line 93
    iput-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mEnableAnimation:Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BackgroundColorPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/BackgroundColorPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BackgroundColorPicker;ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/BackgroundColorPicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mMenuSave:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BackgroundColorPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivityforBackround(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BackgroundColorPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BackgroundColorPicker;->attachAppinfo(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/BackgroundColorPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mEnableAnimation:Z

    return v0
.end method

.method public static addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;II)V
    .locals 3
    .parameter "intent"
    .parameter "croppedPhotoUri"
    .parameter "photoWidth"
    .parameter "photoHeight"

    .prologue
    const/4 v2, 0x1

    .line 1103
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    const-string v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1106
    const-string v0, "aspectX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v0, "aspectY"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v0, "outputX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1109
    const-string v0, "outputY"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    const-string v0, "noFaceDetection"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1111
    const-string v0, "output"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1112
    return-void
.end method

.method private attachAppinfo(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 1058
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 1075
    :goto_0
    return-void

    .line 1062
    :pswitch_0
    const-string v2, "package"

    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1063
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1067
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "package"

    const-string v3, "com.sec.android.app.camera"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1068
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1060
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCropPhoto()V
    .locals 9

    .prologue
    .line 1118
    :try_start_0
    sget-object v3, Lcom/android/mms/ui/BackgroundColorPicker;->source_origin:Ljava/lang/String;

    .line 1119
    .local v3, newPath:Ljava/lang/String;
    const-string v0, "/mnt/sdcard/message_background_image.jpg"

    .line 1122
    .local v0, croppedPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1129
    const-string v4, "/mnt/sdcard/message_background_image.jpg"

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1130
    .local v2, intent:Landroid/content/Intent;
    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .end local v0           #croppedPath:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v1

    .line 1132
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Mms/BackgroundColorPicker"

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static generateTempPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1138
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1139
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageBackground-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "inputPhotoPath"
    .parameter "croppedPhotoPath"

    .prologue
    .line 1094
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1095
    .local v1, inputPhotoUri:Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1096
    .local v0, croppedPhotoUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    sget v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    sget v4, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    invoke-static {v2, v0, v3, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;II)V

    .line 1099
    return-object v2
.end method

.method private makeBackgourndVertical(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, gallery:Landroid/widget/GridView;
    if-nez p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 206
    :goto_0
    if-nez p1, :cond_0

    .line 207
    move-object v1, v0

    .line 208
    .local v1, sent:Landroid/widget/GridView;
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$3;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$3;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/widget/GridView;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 219
    .end local v1           #sent:Landroid/widget/GridView;
    :cond_0
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$4;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$5;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 262
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 267
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$6;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$7;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_0
.end method

.method public static pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 1144
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/mms/ui/BackgroundColorPicker;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1147
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private refreshGridview()V
    .locals 2

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->updateGridViewLayout()V

    .line 906
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 908
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 911
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    goto :goto_0
.end method

.method private saveBackgoundStyle(I)Z
    .locals 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 466
    const/4 v0, 0x1

    .line 468
    .local v0, bSave:Z
    sget-object v3, Lcom/android/mms/ui/BackgroundColorPicker;->mBGImageArray:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v2

    .line 471
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v1, targetFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v3, :cond_2

    .line 474
    const-string v3, "message_background_image.jpg"

    const-string v4, "/mnt/sdcard/message_background_image.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 475
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    const/4 v0, 0x1

    .line 484
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgroundStyleIndex(I)V

    .line 486
    const/4 v2, 0x1

    goto :goto_0

    .line 478
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private saveBackgroundStyleIndex(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1078
    const-string v1, "Mms/BackgroundColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBackgroundStyle index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1080
    const-string v1, "Mms/BackgroundColorPicker"

    const-string v2, "saveBackgroundStyle index is wrong"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 1084
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1085
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_background_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1086
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1087
    return-void
.end method

.method private setCustomThumbnail(Z)V
    .locals 11
    .parameter "isDownSizing"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x64

    .line 936
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.android.mms/"

    const-string v8, "message_background_image.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 941
    .local v2, mImageOutputUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 942
    .local v4, photo:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 945
    .local v5, photoTemp:Landroid/graphics/Bitmap;
    if-nez p1, :cond_2

    .line 946
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 955
    :goto_1
    if-nez v4, :cond_3

    .line 956
    const-string v6, "Mms/BackgroundColorPicker"

    const-string v7, "photo is null!!! return"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 948
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    const/4 v1, 0x0

    .line 949
    .local v1, input:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 950
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 951
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x4

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 952
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 960
    .end local v1           #input:Ljava/io/InputStream;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v6, v9, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v6, v9, :cond_7

    .line 961
    :cond_4
    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 963
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 964
    const/4 v4, 0x0

    .line 965
    move-object v4, v5

    .line 996
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 997
    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 999
    :cond_6
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1003
    :catch_1
    move-exception v0

    .line 1004
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 967
    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v6

    if-nez v6, :cond_8

    .line 968
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_5

    .line 970
    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 977
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 978
    const/4 v4, 0x0

    .line 979
    move-object v4, v5

    goto :goto_2

    .line 983
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 990
    invoke-static {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 991
    const/4 v4, 0x0

    .line 992
    move-object v4, v5

    goto :goto_2

    .line 1005
    :catch_2
    move-exception v0

    .line 1006
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1008
    if-ne p1, v10, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1010
    :cond_9
    invoke-direct {p0, v10}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    goto/16 :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 344
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iput v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    .line 345
    iput p1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 347
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-nez v5, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V

    .line 368
    :goto_0
    move-object v2, p2

    .line 369
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 370
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 371
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 372
    .local v4, imageView:Landroid/widget/ImageView;
    const v5, 0x7f020111

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v6, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    iget v6, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-eq v5, v6, :cond_1

    .line 353
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BackgroundColorPicker;->setBackground(Z)V

    .line 354
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BackgroundColorPicker;->setShadowOnText(Z)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->releaseBackgroundBitmapDrawable()V

    .line 358
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/BackgroundColorPicker;->mBGStyleArray:[I

    iget v8, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 365
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BackgroundColorPicker;->setShadowOnText(Z)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 361
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 375
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #count:I
    .restart local v2       #group:Landroid/view/ViewGroup;
    .restart local v3       #i:I
    :cond_3
    check-cast p3, Landroid/widget/ImageView;

    .end local p3
    const v5, 0x7f020243

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    return-void
.end method

.method private setPrevSelectedItem()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 873
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iget v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    if-ne v2, v3, :cond_0

    .line 900
    :goto_0
    return-void

    .line 876
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 878
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    .line 880
    const/4 v1, 0x0

    .line 881
    .local v1, gallery:Landroid/widget/GridView;
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v2, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 886
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 888
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v3, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/BackgroundColorPicker;->setBackground(Z)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_1

    .line 891
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->releaseBackgroundBitmapDrawable()V

    .line 893
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/BackgroundColorPicker;->mBGStyleArray:[I

    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 896
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private startActivityforBackround(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, contentType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 560
    .local v2, requestCode:I
    packed-switch p1, :pswitch_data_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 562
    :pswitch_0
    const-string v0, "image/*"

    .line 563
    const/16 v2, 0xa

    .line 565
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->startSelectBackgroundActivity(Landroid/content/Intent;)V

    .line 570
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 574
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const/16 v2, 0xb

    .line 576
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 578
    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v3, "CONTENT_TYPE"

    const-string v4, "image/*;"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->startTakePictureBackgroundActivity(Landroid/content/Intent;)V

    .line 581
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startSelectBackgroundActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 599
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    .line 601
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 603
    sget v1, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 604
    .local v1, screenWidth:I
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 606
    .local v0, screenHeight:I
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v2, "scale"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    return-void
.end method

.method private startTakePictureBackgroundActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 591
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->targetOriginFileName:Ljava/lang/String;

    .line 592
    sget-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->targetOriginFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->source_origin:Ljava/lang/String;

    .line 593
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/ui/BackgroundColorPicker;->source_origin:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    .line 594
    const-string v0, "output"

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mImageOutputUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    return-void
.end method


# virtual methods
.method protected getDeviceScreenSize()V
    .locals 4

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 918
    .local v1, orientation:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 920
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 926
    :goto_0
    sget v2, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 927
    .local v2, width:I
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 928
    .local v0, height:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    sput v2, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    .line 930
    sput v0, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 932
    :cond_0
    return-void

    .line 922
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 923
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/ui/BackgroundColorPicker;->DEVICE_SCREEN_HEIGHT_SIZE:I

    goto :goto_0
.end method

.method public final makeView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->makeView()V

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setActionBar()V

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 175
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 190
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 192
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    .line 193
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v1, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v1, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackgroundColorPicker;->setBackground(Z)V

    .line 195
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 615
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 620
    if-nez p3, :cond_1

    .line 621
    const-string v0, "Mms/BackgroundColorPicker"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    .line 662
    :goto_0
    return-void

    .line 625
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 626
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->setPrevSelectedItem()V

    goto :goto_0

    .line 631
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 660
    :goto_1
    const-string v0, "Mms/BackgroundColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageBubbleActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 634
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->doCropPhoto()V

    goto :goto_1

    .line 643
    :sswitch_1
    const-string v0, "message_background_image.jpg"

    const-string v1, "/mnt/sdcard/message_background_image.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 645
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->updateBGStyleArray()V

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->setBackground(Z)V

    .line 647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->setShadowOnText(Z)V

    .line 648
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->setCustomThumbnail(Z)V

    .line 650
    sget v0, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_ITEM_INDEX:I

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 651
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    goto :goto_1

    .line 631
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 382
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/ui/BackgroundColorPicker;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/ui/BackgroundColorPicker;->sOldLocale:Ljava/util/Locale;

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 390
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsAnimating:Z

    .line 391
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->refreshGridview()V

    .line 419
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V

    .line 422
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/android/mms/ui/BackgroundColorPicker;->sOldLocale:Ljava/util/Locale;

    .line 112
    const v1, 0x7f0b0163

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$1;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    const v1, 0x7f0b015b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/android/mms/ui/BackgroundColorPicker$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackgroundColorPicker$2;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->doanimation:Z

    .line 138
    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    .line 139
    const-string v1, "Mms/BackgroundColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsStartFromNonCustom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-boolean v1, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "message_background_image_original.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    const-string v3, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getDeviceScreenSize()V

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->makeView()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 152
    const-string v1, "Mms/BackgroundColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out Of Memory Error while making the View: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 667
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 675
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v2, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/mms/ui/BackgroundColorPicker;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 684
    :cond_2
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->onDestroy()V

    .line 685
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 1019
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1020
    iget-boolean v4, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-nez v4, :cond_1

    .line 1021
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1022
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_background_color"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1025
    .local v0, bgStyleIndex:I
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgroundStyleIndex(I)V

    .line 1031
    .end local v0           #bgStyleIndex:I
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_2

    .line 1032
    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget-object v5, Lcom/android/mms/ui/BackgroundColorPicker;->CUSTOM_BUBBLE_BG_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1053
    :goto_1
    return v3

    .line 1027
    :cond_1
    const-string v4, "message_background_image.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v6, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1041
    :cond_2
    sget-boolean v3, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v3, :cond_3

    const-string v3, "KOR"

    const-string v4, "USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1044
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1045
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1046
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string v3, "from"

    const-string v4, "debug"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->startActivity(Landroid/content/Intent;)V

    .line 1053
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MessageBubbleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 462
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_1
    return v4

    .line 428
    :sswitch_0
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-direct {p0, v5}, Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgoundStyle(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 429
    iput-boolean v4, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->finish()V

    goto :goto_1

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/BackgroundColorPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0370

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 439
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mSaved:Z

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/mms/ui/BackgroundColorPicker;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 440
    iget-boolean v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mIsStartFromNonCustom:Z

    if-nez v5, :cond_3

    .line 441
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 442
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_background_color"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, bgStyleIndex:I
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BackgroundColorPicker;->saveBackgroundStyleIndex(I)V

    .line 452
    .end local v0           #bgStyleIndex:I
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "message_background_image.jpg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 454
    .local v2, mImageOutputUri:Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 447
    .end local v1           #f:Ljava/io/File;
    .end local v2           #mImageOutputUri:Landroid/net/Uri;
    :cond_3
    const-string v4, "message_background_image.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v6, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 426
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mMenuSave:Landroid/view/MenuItem;

    .line 340
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public showBackgroundSelectorDialog()V
    .locals 7

    .prologue
    .line 493
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 553
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v1, Lcom/android/mms/ui/BackgroundSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackgroundSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, backgroundSelectorAdapter:Lcom/android/mms/ui/BackgroundSelectorAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c036f

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 504
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BackgroundColorPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 505
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04003a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 507
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b0121

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 508
    .local v0, attachItemGrid:Landroid/widget/GridView;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    invoke-virtual {v1}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 510
    new-instance v5, Lcom/android/mms/ui/BackgroundColorPicker$8;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$8;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Lcom/android/mms/ui/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 524
    new-instance v5, Lcom/android/mms/ui/BackgroundColorPicker$9;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/BackgroundColorPicker$9;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;Lcom/android/mms/ui/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 533
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    .line 534
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 535
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/ui/BackgroundColorPicker$10;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BackgroundColorPicker$10;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 541
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/ui/BackgroundColorPicker$11;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BackgroundColorPicker$11;-><init>(Lcom/android/mms/ui/BackgroundColorPicker;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 552
    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
