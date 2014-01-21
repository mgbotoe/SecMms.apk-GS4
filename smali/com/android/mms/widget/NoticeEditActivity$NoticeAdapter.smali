.class Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeEditActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private noticeConversationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private noticeConversationListClone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/widget/NoticeEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/widget/NoticeEditActivity;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;>;"
    .local p4, _autoRejectListClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;>;"
    iput-object p1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->context:Landroid/app/Activity;

    .line 268
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 269
    iput-object p3, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    .line 270
    iput-object p4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 288
    new-instance v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;-><init>(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)V

    .line 289
    .local v3, viewHolder:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;
    move-object v2, p2

    .line 290
    .local v2, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 291
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    .line 293
    .local v0, item:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;
    if-eqz v0, :cond_1

    .line 294
    if-nez v2, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04009b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 297
    :cond_0
    const v4, 0x7f0b0115

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 300
    const v4, 0x7f0b0114

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    .line 303
    iget-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v4, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getPhoto()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/widget/NoticeEditActivity;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 307
    iget-object v4, v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    :cond_1
    return-object v2
.end method

.method private isChanged()Z
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 345
    const/4 v1, 0x1

    .line 348
    :goto_1
    return v1

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    .line 355
    .local v0, movedData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 357
    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->notifyDataSetChanged()V

    .line 360
    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    .line 362
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    .line 365
    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeEditActivity;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->getItem(I)Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNoticeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 318
    return-object v0
.end method
