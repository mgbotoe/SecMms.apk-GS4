.class Lcom/android/mms/spam/SetupSpamKeywordList$4;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$4;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$4;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$302(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$4;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const-class v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$4;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method
