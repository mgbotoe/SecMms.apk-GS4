.class public final Lcom/samsung/android/sdk/look/Slook;
.super Ljava/lang/Object;
.source "Slook.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/Slook$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AIRBUTTON:I = 0x1

.field private static final NOT_ASSIGN:I = -0x1

.field public static final SMARTCLIP:I = 0x2

.field public static final SPEN_HOVER_ICON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Slook"

.field public static final WRITINGBUDDY:I = 0x3

.field private static mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    sget v1, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 62
    sget v1, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I

    .line 70
    :goto_0
    return v1

    .line 65
    :cond_0
    :try_start_0
    const-string v1, "ro.slook.ver"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    sget v1, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    sput v3, Lcom/samsung/android/sdk/look/Slook;->mVersionCode:I

    goto :goto_1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "This device is not samsung product."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 96
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "This device is not supported."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 99
    :cond_1
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 116
    invoke-static {p1}, Lcom/samsung/android/sdk/look/SlookImpl;->isFeatureEnabled(I)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
