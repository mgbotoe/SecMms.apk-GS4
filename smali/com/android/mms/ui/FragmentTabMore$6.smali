.class Lcom/android/mms/ui/FragmentTabMore$6;
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
    .line 678
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabMore$6;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore$6;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #calls: Lcom/android/mms/ui/FragmentTabMore;->refreshCBPreferences()V
    invoke-static {v1}, Lcom/android/mms/ui/FragmentTabMore;->access$500(Lcom/android/mms/ui/FragmentTabMore;)V

    .line 686
    :cond_0
    return-void
.end method
