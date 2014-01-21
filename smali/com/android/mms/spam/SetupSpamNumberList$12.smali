.class Lcom/android/mms/spam/SetupSpamNumberList$12;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 734
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v0

    .line 736
    .local v0, del_id:I
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->deleteSpamNumber(I)V
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1200(Lcom/android/mms/spam/SetupSpamNumberList;I)V

    .line 737
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$700(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const v3, 0x7f0c029a

    invoke-virtual {v2, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1300(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V

    .line 741
    .end local v0           #del_id:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->access$702(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 742
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->notifyDataSetInvalidated()V

    .line 743
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iput v4, v1, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 745
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$12;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1400(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 746
    return-void
.end method
