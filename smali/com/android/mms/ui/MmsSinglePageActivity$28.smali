.class Lcom/android/mms/ui/MmsSinglePageActivity$28;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4010
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$28;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$28;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1700(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    .line 4018
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$28;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1800(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    .line 4019
    return-void
.end method
