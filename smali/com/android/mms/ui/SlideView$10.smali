.class Lcom/android/mms/ui/SlideView$10;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 1
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$10;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    sget-object v0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView$10;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$10;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$10;->attachment:Lcom/android/mms/model/AttachmentModel;

    #calls: Lcom/android/mms/ui/SlideView;->saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$3500(Lcom/android/mms/ui/SlideView;Lcom/android/mms/model/AttachmentModel;)V

    .line 1580
    return-void
.end method
