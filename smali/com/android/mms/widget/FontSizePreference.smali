.class public Lcom/android/mms/widget/FontSizePreference;
.super Landroid/preference/ListPreference;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/FontListPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontSizeAdapter:Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference;->mFontSizeAdapter:Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;

    .line 26
    iput-object p1, p0, Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/widget/FontSizePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference;->mFontSizeAdapter:Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;

    iget-object v2, p0, Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;-><init>(Lcom/android/mms/widget/FontSizePreference;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/widget/FontSizePreference;->mFontSizeAdapter:Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findIndexOfWidgetFontSize(Landroid/content/Context;)I

    move-result v0

    .line 35
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference;->mFontSizeAdapter:Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;

    new-instance v2, Lcom/android/mms/widget/FontSizePreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/widget/FontSizePreference$1;-><init>(Lcom/android/mms/widget/FontSizePreference;I)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    return-void
.end method
