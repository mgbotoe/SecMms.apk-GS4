.class abstract Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
.super Ljava/lang/Object;
.source "LinkActionChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Action"
.end annotation


# instance fields
.field private final mTitleId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "titleId"

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->mTitleId:I

    .line 201
    return-void
.end method


# virtual methods
.method abstract execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
