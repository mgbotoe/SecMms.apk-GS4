.class Lcom/android/mms/ui/BackgroundColorPicker$10;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$10;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/BackgroundColorPicker;->mBackgroundDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$302(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 538
    return-void
.end method
