.class Lcom/android/mms/ui/BoxListFrame$3;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$3;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$3;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 414
    return-void
.end method
