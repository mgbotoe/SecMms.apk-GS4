.class Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/FontSizePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FontSizeAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/widget/FontSizePreference;


# direct methods
.method public constructor <init>(Lcom/android/mms/widget/FontSizePreference;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->this$0:Lcom/android/mms/widget/FontSizePreference;

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iput-object p2, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mContext:Landroid/content/Context;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040091

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, v:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getWidgetFontSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$FontSizeAdapter;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 91
    return-object p2
.end method
