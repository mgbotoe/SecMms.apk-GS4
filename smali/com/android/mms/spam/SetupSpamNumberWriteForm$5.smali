.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogMatchCriteria()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showSip()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$400(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    .line 397
    return-void
.end method
