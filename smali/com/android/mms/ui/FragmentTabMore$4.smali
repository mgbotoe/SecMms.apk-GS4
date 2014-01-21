.class Lcom/android/mms/ui/FragmentTabMore$4;
.super Ljava/lang/Object;
.source "FragmentTabMore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FragmentTabMore;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabMore;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabMore;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabMore$4;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 580
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 581
    return-void
.end method
