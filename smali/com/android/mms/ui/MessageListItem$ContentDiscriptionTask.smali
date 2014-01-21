.class Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;
.super Landroid/os/AsyncTask;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentDiscriptionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/mms/ui/MessageItem;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, [Lcom/android/mms/ui/MessageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->doInBackground([Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .parameter "arg0"

    .prologue
    const/16 v11, 0x20

    .line 815
    const/4 v7, 0x0

    aget-object v4, p1, v7

    .line 816
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .local v0, contentDiscription:Ljava/lang/StringBuilder;
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 818
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_0
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 821
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 824
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 825
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_5

    .line 829
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, v7, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    .line 830
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 831
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 834
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 838
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    iget-boolean v7, v4, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_6

    .line 839
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, v7, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    .line 841
    .local v3, model:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 844
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #model:Lcom/android/mms/model/AttachmentModel;
    :cond_6
    iget-boolean v7, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v7, :cond_7

    .line 845
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    :cond_7
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 848
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    :cond_8
    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 851
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c02cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    :cond_9
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    if-nez v7, :cond_c

    const-string v6, ""

    .line 854
    .local v6, time:Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, mms:Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 853
    .end local v2           #mms:Ljava/lang/String;
    .end local v6           #time:Ljava/lang/String;
    :cond_c
    iget-object v6, v4, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_2

    .line 854
    .restart local v6       #time:Ljava/lang/String;
    :cond_d
    const-string v2, ""

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 810
    return-void
.end method
