.class Lcom/android/mms/ui/MessagingPreferenceActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2268
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2273
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2274
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 2276
    :cond_0
    return-void
.end method
