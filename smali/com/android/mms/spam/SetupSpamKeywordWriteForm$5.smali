.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$700(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    return-void
.end method
