.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 973
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    .line 975
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V

    const-string v2, "msg:contact cache task"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 1000
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1001
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1007
    monitor-exit v1

    .line 1008
    return-void

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
