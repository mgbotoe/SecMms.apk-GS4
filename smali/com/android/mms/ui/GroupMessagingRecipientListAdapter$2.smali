.class Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$2;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$2;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "arg2"

    .prologue
    .line 107
    packed-switch p2, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method