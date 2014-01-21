.class Lcom/android/mms/ui/BoxListFrame$23;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->markAsRead(JLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$23;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2960
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$msgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2961
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-boolean v0, v0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    const-wide/16 v1, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2966
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iput-boolean v3, v0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    .line 2967
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2968
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$23;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2970
    :cond_1
    return-void
.end method
