.class Lcom/android/mms/ui/MmsPlayerControllerMulti$9;
.super Ljava/lang/Object;
.source "MmsPlayerControllerMulti.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 508
    return-void
.end method
