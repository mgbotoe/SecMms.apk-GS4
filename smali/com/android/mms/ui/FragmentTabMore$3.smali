.class Lcom/android/mms/ui/FragmentTabMore$3;
.super Ljava/lang/Object;
.source "FragmentTabMore.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabMore;
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
    .line 287
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabMore$3;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 289
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, callbackNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore$3;->this$0:Lcom/android/mms/ui/FragmentTabMore;

    #calls: Lcom/android/mms/ui/FragmentTabMore;->setCallbackNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/FragmentTabMore;->access$400(Lcom/android/mms/ui/FragmentTabMore;Ljava/lang/String;)V

    .line 294
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
