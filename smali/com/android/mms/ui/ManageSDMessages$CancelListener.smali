.class Lcom/android/mms/ui/ManageSDMessages$CancelListener;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$CancelListener;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1102(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ManageSDMessages;->finish:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1202(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    .line 436
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 432
    return-void
.end method
