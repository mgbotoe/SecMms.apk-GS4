.class Lcom/android/mms/spam/SetupSpamKeywordList$5;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 256
    .local v0, value:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_spam_smart"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    return-void

    .line 253
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:I
    goto :goto_0
.end method
