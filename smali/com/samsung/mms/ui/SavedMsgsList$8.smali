.class Lcom/samsung/mms/ui/SavedMsgsList$8;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/SavedMsgsList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$8;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 564
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 565
    return-void
.end method
