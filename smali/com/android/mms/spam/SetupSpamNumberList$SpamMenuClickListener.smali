.class final Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpamMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method private constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 714
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 722
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 716
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->deleteDialog()V

    goto :goto_0

    .line 719
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1100(Lcom/android/mms/spam/SetupSpamNumberList;)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
