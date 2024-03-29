.class Lcom/android/mms/ui/MessageOptions$CreationOkListener;
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
    name = "CreationOkListener"
.end annotation


# instance fields
.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPostExecute:Ljava/lang/Runnable;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "sendReq"
    .parameter "subject"

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1941
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1942
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    .line 1943
    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "sendReq"
    .parameter "subject"
    .parameter "postExecute"

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1946
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1947
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1948
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    .line 1949
    iput-object p5, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    .line 1950
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1928
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    move v6, v2

    #calls: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    #calls: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    .line 1932
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1933
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
