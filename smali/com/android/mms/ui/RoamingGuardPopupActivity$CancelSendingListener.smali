.class Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;
.super Ljava/lang/Object;
.source "RoamingGuardPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RoamingGuardPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelSendingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->finish()V

    .line 137
    return-void
.end method
