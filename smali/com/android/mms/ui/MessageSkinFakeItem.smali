.class public Lcom/android/mms/ui/MessageSkinFakeItem;
.super Ljava/lang/Object;
.source "MessageSkinFakeItem.java"


# instance fields
.field public mIsNew:Z

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "text"
    .parameter "isNew"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    .line 8
    iput-object p1, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mText:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageSkinFakeItem;->mIsNew:Z

    .line 10
    return-void
.end method
