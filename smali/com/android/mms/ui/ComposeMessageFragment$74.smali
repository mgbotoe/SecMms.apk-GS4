.class Lcom/android/mms/ui/ComposeMessageFragment$74;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V
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
    .line 6662
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$74;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 6664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$74;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextAdapter:Lcom/android/mms/ui/IconListAdapter;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5302(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/IconListAdapter;)Lcom/android/mms/ui/IconListAdapter;

    .line 6665
    return-void
.end method
