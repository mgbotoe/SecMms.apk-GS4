.class Lcom/android/mms/ui/FragmentTabSmsMms$1;
.super Ljava/lang/Object;
.source "FragmentTabSmsMms.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FragmentTabSmsMms;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabSmsMms;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabSmsMms$1;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$1;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 353
    return-void
.end method
