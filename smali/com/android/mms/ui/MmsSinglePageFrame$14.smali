.class Lcom/android/mms/ui/MmsSinglePageFrame$14;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$14;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2306
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$14;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$14;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$14;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1300(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;)V

    .line 2310
    return-void
.end method
