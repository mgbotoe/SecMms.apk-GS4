.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->LayoutInit()V
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
    .line 266
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogMatchCriteria()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$300(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    .line 269
    return-void
.end method
