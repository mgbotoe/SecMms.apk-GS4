.class Lcom/android/mms/ui/SmsViewerActivity$4;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    #calls: Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewerActivity;->access$400(Lcom/android/mms/ui/SmsViewerActivity;)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    #calls: Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewerActivity;->access$500(Lcom/android/mms/ui/SmsViewerActivity;)V

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->invalidateOptionsMenu()V

    .line 607
    return-void
.end method
