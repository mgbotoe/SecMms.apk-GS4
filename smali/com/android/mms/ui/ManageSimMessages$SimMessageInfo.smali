.class Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimMessageInfo"
.end annotation


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public final mBody:Ljava/lang/String;

.field public final mDate:J

.field public final mType:I

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "address"
    .parameter "date"
    .parameter "body"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput p2, p0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mType:I

    .line 470
    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mAddress:Ljava/lang/String;

    .line 471
    iput-wide p4, p0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mDate:J

    .line 472
    iput-object p6, p0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;->mBody:Ljava/lang/String;

    .line 473
    return-void
.end method
