.class Lcom/android/mms/ui/SmsViewerActivity$3;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V
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
    .line 297
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$3;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$3;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->viewContactDetailORList()V

    .line 300
    return-void
.end method
