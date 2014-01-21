.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListAdapter"

.field private static mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mHasLockedThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationEnable:Z

.field private mIsDeleteMode:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mIsSplitMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J

.field private mSplitModePreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 59
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 76
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    .line 86
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/high16 v11, 0x42a0

    const-wide/16 v9, 0x12c

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 102
    instance-of v4, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v4, :cond_0

    .line 103
    const-string v4, "Mms/ConversationListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected bound view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    move-object v2, p1

    .line 111
    check-cast v2, Lcom/android/mms/ui/ConversationListItem;

    .line 112
    .local v2, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 114
    .local v1, conv:Lcom/android/mms/data/Conversation;
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationListItem;->setDeleteMode(Z)V

    .line 116
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v4, :cond_2

    .line 118
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationListItem;->setMoveMode(Z)V

    .line 120
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v4, :cond_3

    .line 121
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationListItem;->setSaveMode(Z)V

    .line 125
    :cond_3
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v4, :cond_8

    .line 126
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 127
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    sget v5, Lcom/android/mms/ui/ConversationListFragment;->heightOfTitle:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 130
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v5, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v5}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    sget v6, Lcom/android/mms/ui/ConversationListFragment;->heightOfTitle:I

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v9, v10, v5, v6, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    new-instance v6, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v6}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    invoke-static {v9, v10, v6, v11, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 164
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 165
    .local v0, checked:Z
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v4, :cond_b

    .line 166
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    .line 178
    :cond_5
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 179
    iget v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationListItem;->setFontSize(I)V

    .line 180
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationListItem;->setSplitMode(Z)V

    .line 181
    invoke-virtual {v2, p2, v1}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getSplitModePreference()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 184
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->isSplitBarTouch()Z

    move-result v3

    .line 186
    .local v3, touch:Z
    iget-wide v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    if-eqz v4, :cond_d

    .line 187
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    .line 193
    .end local v3           #touch:Z
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 194
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v4, v2}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    .line 197
    :cond_7
    const-string v4, "Mms/ConversationListAdapter"

    const-string v5, "bindView() complete"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v0           #checked:Z
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v4, :cond_9

    .line 144
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 145
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    if-eqz v4, :cond_4

    .line 146
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    new-instance v6, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v6}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    invoke-static {v9, v10, v6, v11, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 151
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v4, :cond_a

    .line 152
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 153
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    new-instance v6, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v6}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    invoke-static {v9, v10, v6, v11, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/animation/MsgListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 160
    :cond_a
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 169
    .restart local v0       #checked:Z
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eqz v4, :cond_c

    .line 170
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    goto/16 :goto_2

    .line 173
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eqz v4, :cond_5

    .line 174
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    if-nez v0, :cond_5

    .line 176
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    goto/16 :goto_2

    .line 189
    .restart local v3       #touch:Z
    :cond_d
    invoke-virtual {v2, v8, v3}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    goto/16 :goto_3
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    return-void
.end method

.method public clearHasLockedMsg()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "clearHasLockedMsg"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 279
    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 275
    return-void
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public getSplitModePreference()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return v0
.end method

.method public hasLockedMsg(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    .prologue
    .line 378
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 379
    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 358
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 202
    instance-of v1, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "Mms/ConversationListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMovedToScrapHeap view is not ConversationListItem but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 209
    .local v0, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    .line 210
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public reCalulateCheckedThreads()V
    .locals 6

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 386
    .local v1, currentCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v2, newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, colId:I
    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 395
    .local v3, threadId:Ljava/lang/Long;
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    sput-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 94
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 90
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    .line 98
    return-void
.end method

.method public setChecked(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 293
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCheckedAll()V
    .locals 5

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 303
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 305
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 310
    .local v1, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    :cond_2
    sget-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public setHasLockedMsg(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v0, "Mms/ConversationListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasLockedMsg threadID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 371
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 372
    return-void
.end method

.method public setMultiMode(IZ)V
    .locals 1
    .parameter "mode"
    .parameter "modeOn"

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eq v0, p2, :cond_0

    .line 242
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 266
    :goto_1
    if-eqz p2, :cond_0

    .line 267
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    if-eq v0, p2, :cond_0

    .line 249
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMoveMode:Z

    goto :goto_1

    .line 253
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    if-eq v0, p2, :cond_0

    .line 259
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSaveMode:Z

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 224
    return-void
.end method

.method public setSplitModePreference(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    .line 284
    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 343
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 345
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 346
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 348
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
