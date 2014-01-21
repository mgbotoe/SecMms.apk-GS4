.class Lcom/android/mms/ui/MsgItem;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"


# instance fields
.field address:Ljava/lang/String;

.field body:Ljava/lang/String;

.field boxId:I

.field date:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 744
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "boxId"
    .parameter "address"
    .parameter "body"
    .parameter "date"

    .prologue
    .line 746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput p1, p0, Lcom/android/mms/ui/MsgItem;->boxId:I

    .line 748
    iput-object p2, p0, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    .line 749
    iput-object p3, p0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    .line 750
    iput-object p4, p0, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    .line 751
    return-void
.end method
