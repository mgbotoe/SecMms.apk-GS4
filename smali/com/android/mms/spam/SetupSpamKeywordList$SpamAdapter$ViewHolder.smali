.class Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field text:Landroid/widget/TextView;

.field text_layout:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter$ViewHolder;->this$1:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
