.class Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 937
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    .line 938
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 939
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 943
    packed-switch p1, :pswitch_data_0

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 945
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$100(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveError:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2102(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    .line 953
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->showDialog(I)V

    .line 955
    :cond_1
    if-eqz p3, :cond_0

    .line 956
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveError:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2102(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    .line 950
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$400(Lcom/samsung/mms/ui/SavedMsgsList;)V

    .line 951
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->setSavePanelInvisible()V
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)V

    goto :goto_1

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
