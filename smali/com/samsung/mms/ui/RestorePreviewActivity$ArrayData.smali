.class Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;
.super Ljava/lang/Object;
.source "RestorePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/RestorePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArrayData"
.end annotation


# instance fields
.field final mId:J

.field final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/RestorePreviewActivity;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->this$0:Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide p2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mId:J

    .line 333
    iput-object p4, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mType:Ljava/lang/String;

    .line 334
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 338
    instance-of v2, p1, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 341
    check-cast v0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;

    .line 342
    .local v0, data:Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;
    iget-wide v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mId:J

    iget-wide v4, v0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mType:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/mms/ui/RestorePreviewActivity$ArrayData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const/4 v1, 0x1

    goto :goto_0
.end method
