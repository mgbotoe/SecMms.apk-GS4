.class Lcom/android/mms/ui/BoxListAdapter$MessageData;
.super Ljava/lang/Object;
.source "BoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field private mId:J

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->this$0:Lcom/android/mms/ui/BoxListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-wide p2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    .line 157
    iput-object p4, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public equals(JLjava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 162
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 165
    check-cast v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 167
    .local v0, data:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    iget-wide v2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    iget-wide v4, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setData(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "type"

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mId:J

    .line 184
    iput-object p3, p0, Lcom/android/mms/ui/BoxListAdapter$MessageData;->mType:Ljava/lang/String;

    .line 185
    return-void
.end method
