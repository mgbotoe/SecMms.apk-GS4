.class Lcom/android/mms/ui/ComposeMessageFragment$50;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->close()V
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
    .line 5899
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5901
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 5902
    return-void
.end method
