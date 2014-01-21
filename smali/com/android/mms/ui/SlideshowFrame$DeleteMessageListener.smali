.class Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteLocked:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowFrame;JZ)V
    .locals 1
    .parameter
    .parameter "msgId"
    .parameter "deleteLocked"

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1879
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteLocked:Z

    .line 1880
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1874
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteLocked:Z

    .line 1875
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 1883
    sget-object v0, Lcom/android/mms/ui/SlideshowFrame;->mBackgroundQueryHandler:Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1887
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1889
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "GCF Mode On -  DB Count Reset"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1893
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    #getter for: Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1300(Lcom/android/mms/ui/SlideshowFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1898
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1899
    return-void

    .line 1883
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0
.end method
