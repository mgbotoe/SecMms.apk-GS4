.class Lcom/android/mms/ui/TranslateManager$9;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateManager;->showSignInSamsungAccount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$9;->this$0:Lcom/android/mms/ui/TranslateManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "menu"

    .prologue
    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    return-void
.end method
