.class Lcom/android/mms/ui/FragmentTabMore$1;
.super Landroid/content/BroadcastReceiver;
.source "FragmentTabMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabMore;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabMore;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabMore$1;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$1;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-virtual {v0}, Lcom/android/mms/ui/FragmentTabMore;->setVibrateMenu()V

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore$1;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-virtual {v0}, Lcom/android/mms/ui/FragmentTabMore;->setPreferenceSummary()V

    .line 67
    :cond_0
    return-void
.end method
