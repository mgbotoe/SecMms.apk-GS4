.class Lcom/android/mms/ui/MessagingPreferenceTabActivity$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceTabActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceTabActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->restoreDefaultPreferences()V

    .line 205
    return-void
.end method
