.class Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;
.super Ljava/lang/Object;
.source "RoamingGuardPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RoamingGuardPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingPopupDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->finish()V

    .line 143
    return-void
.end method
