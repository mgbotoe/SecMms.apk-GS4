.class Lcom/android/mms/ui/ComposeMenu$4;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$4;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1714
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$4;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->showSip()V

    .line 1716
    :cond_0
    return-void
.end method
