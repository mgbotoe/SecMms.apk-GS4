.class Lcom/android/mms/ui/RoamingGuardPopupActivity$1;
.super Ljava/lang/Object;
.source "RoamingGuardPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RoamingGuardPopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;->this$0:Lcom/android/mms/ui/RoamingGuardPopupActivity;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->sendSmsInInternationalRoaming(I)V

    .line 61
    return-void
.end method
