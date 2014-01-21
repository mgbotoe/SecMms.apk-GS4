.class public Lcom/android/mms/ui/VAttachmentListView;
.super Landroid/widget/LinearLayout;
.source "VAttachmentListView.java"


# static fields
.field private static final TYPE_ICON_DEFAULT:I = 0x7f020009

.field private static sTypeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemClickable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private getTypeIconId(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 63
    sget-object v1, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    .local v0, iconId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const v1, 0x7f020009

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private initVariable(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/ui/VAttachmentListView;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vcard"

    const v2, 0x7f02000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vcalendar"

    const v2, 0x7f02000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vnote"

    const v2, 0x7f02000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vtodo"

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/model/AttachmentModel;Landroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "model"
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/VAttachmentListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 70
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/VAttachmentListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, img:Landroid/widget/ImageView;
    const v4, 0x7f02010f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 73
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/VAttachmentListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 75
    .local v2, margin:I
    invoke-virtual {v1, v2, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/mms/ui/VAttachmentListView;->addView(Landroid/view/View;II)V

    .line 79
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v2           #margin:I
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/VAttachmentListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04001c

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, childView:Landroid/view/View;
    const v4, 0x7f0b001a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, txt:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/VAttachmentListView;->getTypeIconId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 83
    const v4, 0x4089999a

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 85
    iget-boolean v4, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 88
    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 93
    :cond_1
    const/high16 v4, 0x4080

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    const v6, 0x4104cccd

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VAttachmentListView;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/VAttachmentListView;->removeAllViews()V

    .line 99
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    .line 103
    return-void
.end method
