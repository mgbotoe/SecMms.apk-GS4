.class Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;>;"
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->context:Landroid/app/Activity;

    .line 319
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 320
    #setter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {p1, p3}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$302(Lcom/android/mms/widget/NoticeDeleteActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 321
    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$200(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    return-void
.end method

.method private drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f0b02bf

    .line 366
    new-instance v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;)V

    .line 367
    .local v3, viewHolder:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;
    move-object v2, p2

    .line 368
    .local v2, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 369
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    .line 371
    .local v0, item:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
    if-eqz v0, :cond_1

    .line 372
    if-nez v2, :cond_0

    .line 373
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040099

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 375
    :cond_0
    const v4, 0x7f0b0115

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 378
    const v4, 0x7f0b0114

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    .line 381
    iget-object v4, v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getPhoto()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/widget/NoticeDeleteActivity;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 385
    iget-object v4, v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter$ViewHolder;->grid_contact_photo:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 395
    :cond_1
    :goto_0
    return-object v2

    .line 390
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    return-void
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    return-void
.end method

.method public getCheckedSize()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$200(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getItem(I)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 414
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNoticeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->drawEditScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 403
    return-object v0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->isCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    return-void
.end method
