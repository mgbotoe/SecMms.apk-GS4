.class public Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientItem;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoverRecipientItem"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "number"

    .prologue
    .line 13978
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientItem;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13979
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientItem;->mName:Ljava/lang/String;

    .line 13980
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$HoverRecipientItem;->mNumber:Ljava/lang/String;

    .line 13981
    return-void
.end method
