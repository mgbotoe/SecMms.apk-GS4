.class Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private mDeleteUri:Landroid/net/Uri;

.field private mHasLockedMessages:Z

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 2265
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 2267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mHasLockedMessages:Z

    .line 2268
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 2271
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 2273
    iput-boolean p3, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 2274
    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2259
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2291
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(),whichButton [BUTTON_POSITIVE:-1]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDeleteUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2293
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)V

    .line 2352
    .local v0, deleteRun:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "delete thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2355
    .end local v0           #deleteRun:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2356
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$3602(Lcom/android/mms/ui/BoxListFrame;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2357
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2358
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    .line 2360
    :cond_1
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 2277
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 2278
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;
    .locals 0
    .parameter "handler"

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 2283
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .parameter "hasLockedMessages"

    .prologue
    .line 2287
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mHasLockedMessages:Z

    .line 2288
    return-void
.end method
