.class Lcom/android/mms/ui/CMASDialog_single_top$1;
.super Ljava/lang/Object;
.source "CMASDialog_single_top.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog_single_top;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog_single_top;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog_single_top;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog_single_top$1;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top$1;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    #getter for: Lcom/android/mms/ui/CMASDialog_single_top;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$000(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/app/StatusBarManager;

    move-result-object v1

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top$1;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    #getter for: Lcom/android/mms/ui/CMASDialog_single_top;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$000(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 143
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    .line 144
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_1
    return v0
.end method
