.class Lcom/android/mms/ui/MmsSinglePageActivity$23;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

.field final synthetic val$SpammsgUri:Landroid/net/Uri;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3586
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$SpammsgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3588
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$SpammsgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3589
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3592
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3593
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$23;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3595
    :cond_0
    return-void
.end method
