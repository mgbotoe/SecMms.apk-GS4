.class Lcom/android/mms/ui/FragmentTabGeneral$2;
.super Ljava/lang/Object;
.source "FragmentTabGeneral.java"

# interfaces
.implements Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabGeneral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabGeneral;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabGeneral;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabGeneral$2;->this$0:Lcom/android/mms/ui/FragmentTabGeneral;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral$2;->this$0:Lcom/android/mms/ui/FragmentTabGeneral;

    #getter for: Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabGeneral;->access$300(Lcom/android/mms/ui/FragmentTabGeneral;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabGeneral$2;->this$0:Lcom/android/mms/ui/FragmentTabGeneral;

    #getter for: Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/FragmentTabGeneral;->access$000(Lcom/android/mms/ui/FragmentTabGeneral;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral$2;->this$0:Lcom/android/mms/ui/FragmentTabGeneral;

    #calls: Lcom/android/mms/ui/FragmentTabGeneral;->setMmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabGeneral;->access$400(Lcom/android/mms/ui/FragmentTabGeneral;)V

    .line 231
    return-void
.end method
