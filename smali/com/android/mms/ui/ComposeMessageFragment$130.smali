.class Lcom/android/mms/ui/ComposeMessageFragment$130;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initReplyAllBannerUI()V
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
    .line 13849
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$130;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 13851
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$130;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showGroupMesageInfolDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 13852
    return-void
.end method
