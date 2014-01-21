.class Lcom/android/mms/ui/MessageOptions$AttachOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachOkListener"
.end annotation


# instance fields
.field mAudioOnly:Z

.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    .line 2664
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V

    .line 2665
    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "bSave"
    .parameter "msgId"
    .parameter "audioOnly"

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mContext:Landroid/content/Context;

    .line 2669
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    .line 2670
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mMsgId:J

    .line 2671
    iput-boolean p6, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mAudioOnly:Z

    .line 2672
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 2675
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v8, 0x7f0b003f

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 2677
    .local v4, lv:Landroid/widget/ListView;
    if-nez v4, :cond_1

    .line 2710
    :cond_0
    :goto_0
    return-void

    .line 2685
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/AttachmentListAdapter;

    .line 2686
    .local v3, la:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2688
    .local v5, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 2689
    invoke-virtual {v3, v2, v9, v9}, Lcom/android/mms/ui/AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2690
    .local v7, rowItem:Landroid/view/View;
    const v8, 0x7f0b0041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2691
    .local v1, cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v8, 0x7f0b0042

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 2693
    .local v6, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2694
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 2696
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    .line 2697
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2704
    .end local v1           #cb:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v6           #rb:Landroid/widget/RadioButton;
    .end local v7           #rowItem:Landroid/view/View;
    :cond_4
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mAudioOnly:Z

    if-nez v8, :cond_5

    .line 2705
    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v8, v8, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/mms/content/MmsPartExport;->saveParts(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 2706
    :cond_5
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mAudioOnly:Z

    if-eqz v8, :cond_0

    .line 2707
    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v8, v8, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-static {v9, v8, v10, v10}, Lcom/samsung/mms/content/MmsPartExport;->savePartForRingtone(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    goto :goto_0
.end method
