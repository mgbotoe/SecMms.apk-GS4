.class Lcom/android/mms/ui/SmsViewFrame$3;
.super Ljava/lang/Object;
.source "SmsViewFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewFrame;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$3;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    iput-object p2, p0, Lcom/android/mms/ui/SmsViewFrame$3;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SmsViewFrame$3;->val$values:Landroid/content/ContentValues;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1357
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame$3;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    #getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame$3;->val$msgUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MMS.intent.action.MMS_READ_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1359
    .local v0, widgetIntent:Landroid/content/Intent;
    const-string v1, "message_id"

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame$3;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    iget-wide v2, v2, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1360
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame$3;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    #getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1363
    return-void
.end method
