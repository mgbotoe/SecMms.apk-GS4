.class public Lcom/android/mms/ui/SendSplitMultimediaMessage;
.super Ljava/lang/Object;
.source "SendSplitMultimediaMessage.java"


# static fields
.field private static DEBUG_LOG:Z = false

.field public static RECIPIENT_NUM_OF_SPLIT_MMS:I = 0x0

.field public static final SEND_SPLIT_MMS_END:I = 0x2

.field public static final SEND_SPLIT_MMS_NOP:I = 0x0

.field public static final SEND_SPLIT_MMS_START:I = 0x1

.field public static SPLIT_NUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SendSplitMultimediaMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    .line 41
    const/16 v0, 0x1e

    sput v0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    .line 42
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "activity"
    .parameter "comp"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 50
    return-void
.end method

.method private decideThreshold()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v1

    sget v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    div-int/2addr v1, v2

    sput v1, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    .line 54
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v1

    sget v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    rem-int v0, v1, v2

    .line 55
    .local v0, modval:I
    if-lez v0, :cond_0

    .line 56
    sget v1, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    .line 58
    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "SendSplitMultimediaMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>RECIPIENT_NUM_OF_SPLIT_MMS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SPLIT_NUM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method

.method private splitContacts(Lcom/android/mms/data/ContactList;II)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "originList"
    .parameter "startIndex"
    .parameter "numOfRecipient"

    .prologue
    .line 215
    sget-boolean v3, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "SendSplitMultimediaMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",numOfRecipient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 219
    .local v2, newList:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .line 220
    .local v1, loopIndex:I
    move v0, p2

    .line 222
    .local v0, contactIndex:I
    sget-boolean v3, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "SendSplitMultimediaMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    :goto_0
    if-ge v1, p3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 224
    invoke-virtual {p1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_2
    sget-boolean v3, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "SendSplitMultimediaMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return newList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_3
    return-object v2
.end method


# virtual methods
.method public checkConditionForSplitSendMMS()Z
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/SendSplitMultimediaMessage;->decideThreshold()V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, recipientNumberIs:I
    const/4 v1, 0x0

    .line 67
    .local v1, retVal:Z
    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 68
    sget-boolean v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "SendSplitMultimediaMessage"

    const-string v3, "if (1) getWorkingRecipients Not null :: new composing"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 75
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v2, :cond_2

    const-string v2, "SendSplitMultimediaMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "just about send(), check recipientNumberIs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",requiresMms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    sget v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    if-le v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    const/4 v1, 0x1

    .line 83
    :goto_1
    sget-boolean v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConditionForSplitSendMMS()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    return v1

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    sget-boolean v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v2, :cond_5

    const-string v2, "SendSplitMultimediaMessage"

    const-string v3, "if (2) getRecipients Not null :: we have already involved in conversation"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto/16 :goto_0

    .line 80
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initWorkingMessageClone(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "splitNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/WorkingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-boolean v2, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "SendSplitMultimediaMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWorkingMessageClone:splitNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/WorkingMessage;>;"
    const/4 v0, 0x0

    .line 240
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-object v1
.end method

.method public sendSplitMMS(Lcom/android/mms/ui/MessageListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, i:I
    const/4 v1, 0x0

    .line 90
    .local v1, contactListArrayIndex:I
    new-instance v5, Ljava/util/ArrayList;

    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v5, mWorkingMessageCloneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/WorkingMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v0, contactListArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/ContactList;>;"
    new-instance v4, Ljava/util/ArrayList;

    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v4, mConversationCloneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Conversation;>;"
    const/4 v7, 0x0

    .line 103
    .local v7, startIndexForSplitContact:I
    sget-boolean v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "SendSplitMultimediaMessage"

    const-string v9, "sendSplitMMS()"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 113
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/SendSplitMultimediaMessage;->initWorkingMessageClone(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 116
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setFlag_splitMmsOnGoing(I)I

    .line 117
    const/4 v2, 0x0

    :goto_0
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    .line 119
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setFlag_splitMmsOnGoing(I)I

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getWorkingMessageUri()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_2

    .line 125
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v6

    .line 126
    .local v6, messageUri:Landroid/net/Uri;
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1, v6}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 137
    .end local v6           #messageUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_4

    .line 139
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    iget-object v9, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->cloneWorkingMessage_ForSplitMmsSend(Lcom/android/mms/data/WorkingMessage;)V

    .line 141
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    iget-object v9, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getWorkingMessageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->loadFromUri_onlySlideshowModel(Landroid/net/Uri;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 131
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getWorkingMessageUri()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_2

    .line 132
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_1

    .line 145
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 148
    .local v3, listOrigin:Lcom/android/mms/data/ContactList;
    const/4 v2, 0x0

    :goto_3
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    if-ge v2, v8, :cond_6

    .line 149
    sget-boolean v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->DEBUG_LOG:Z

    if-eqz v8, :cond_5

    const-string v8, "kkahn/ComposeMessageAcitivy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Split contacts : startIndexForSplitContact="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_5
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    invoke-direct {p0, v3, v7, v8}, Lcom/android/mms/ui/SendSplitMultimediaMessage;->splitContacts(Lcom/android/mms/data/ContactList;II)Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->RECIPIENT_NUM_OF_SPLIT_MMS:I

    add-int/2addr v7, v8

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 156
    :cond_6
    const/4 v2, 0x0

    :goto_4
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_7

    .line 157
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 165
    :cond_7
    const/4 v1, 0x0

    .line 166
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/ContactList;

    invoke-virtual {v9, v8}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 170
    const/4 v1, 0x1

    .line 171
    const/4 v2, 0x0

    :goto_5
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_8

    .line 172
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/ContactList;

    invoke-virtual {v8, v9}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 173
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Conversation;

    invoke-virtual {v8, v9, v11}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 178
    :cond_8
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 179
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 181
    :cond_9
    const/4 v1, 0x1

    .line 182
    const/4 v2, 0x0

    :goto_6
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_b

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 184
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v11}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 185
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 189
    :cond_b
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 190
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 191
    :cond_c
    const/4 v1, 0x1

    .line 192
    const/4 v2, 0x0

    :goto_7
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_e

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 194
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 195
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 198
    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 199
    const/4 v2, 0x0

    :goto_8
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_f

    .line 200
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Conversation;

    invoke-virtual {v8, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 204
    :cond_f
    iget-object v8, p0, Lcom/android/mms/ui/SendSplitMultimediaMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/mms/data/WorkingMessage;->setFlag_splitMmsOnGoing(I)I

    .line 205
    const/4 v2, 0x0

    :goto_9
    sget v8, Lcom/android/mms/ui/SendSplitMultimediaMessage;->SPLIT_NUM:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_10

    .line 206
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v12}, Lcom/android/mms/data/WorkingMessage;->setFlag_splitMmsOnGoing(I)I

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 211
    :cond_10
    return v11
.end method
