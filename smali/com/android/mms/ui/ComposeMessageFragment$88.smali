.class Lcom/android/mms/ui/ComposeMessageFragment$88;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7896
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$88;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "v"
    .parameter "itemIndex"
    .parameter "data"

    .prologue
    .line 7900
    move-object v0, p3

    check-cast v0, Landroid/net/Uri;

    .line 7901
    .local v0, selectedItemUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 7902
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$88$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$88$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$88;Landroid/net/Uri;)V

    const-string v3, "addAttachment"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7912
    :cond_1
    return-void
.end method
