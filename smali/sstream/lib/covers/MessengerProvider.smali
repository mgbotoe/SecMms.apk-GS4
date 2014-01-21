.class Lsstream/lib/covers/MessengerProvider;
.super Ljava/lang/Object;
.source "MessengerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsstream/lib/covers/MessengerProvider$IncomingHandler;,
        Lsstream/lib/covers/MessengerProvider$Request;
    }
.end annotation


# static fields
.field private static final LIB_VERSION:Ljava/lang/String; = "1.2"

.field static final MSG_REGISTER_CLIENT:I = 0x1

.field static final MSG_TRIGGER_UPDATE:I = 0x3

.field static final MSG_UNREGISTER_CLIENT:I = 0x2

.field private static final REMOTE_SERVICE:Ljava/lang/String; = "sstream.flipboard.service.MessengerService"

.field private static final TAG:Ljava/lang/String; = "CoverLockLibrary"

.field private static mConnection:Landroid/content/ServiceConnection;

.field static mContext:Landroid/content/Context;

.field static mIsBound:Z

.field static mMessenger:Landroid/os/Messenger;

.field static mService:Landroid/os/Messenger;

.field static mStreamUpdateListener:Lsstream/lib/covers/StreamUpdateListener;

.field static userRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsstream/lib/covers/MessengerProvider$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentRequest:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    .line 54
    sput-object v0, Lsstream/lib/covers/MessengerProvider;->mStreamUpdateListener:Lsstream/lib/covers/StreamUpdateListener;

    .line 134
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lsstream/lib/covers/MessengerProvider$IncomingHandler;

    invoke-direct {v1}, Lsstream/lib/covers/MessengerProvider$IncomingHandler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lsstream/lib/covers/MessengerProvider;->mMessenger:Landroid/os/Messenger;

    .line 139
    new-instance v0, Lsstream/lib/covers/MessengerProvider$1;

    invoke-direct {v0}, Lsstream/lib/covers/MessengerProvider$1;-><init>()V

    sput-object v0, Lsstream/lib/covers/MessengerProvider;->mConnection:Landroid/content/ServiceConnection;

    .line 172
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sput-object p1, Lsstream/lib/covers/MessengerProvider;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static synthetic access$0(ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-static {p0, p1}, Lsstream/lib/covers/MessengerProvider;->sendMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method static disconnectServer()Z
    .locals 5

    .prologue
    .line 191
    sget-object v2, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    monitor-enter v2

    .line 192
    :try_start_0
    sget-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lsstream/lib/covers/MessengerProvider;->sendMessage(ILandroid/os/Bundle;)V

    .line 197
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->mContext:Landroid/content/Context;

    sget-object v3, Lsstream/lib/covers/MessengerProvider;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    const/4 v1, 0x0

    sput-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    .line 201
    :cond_0
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, request:Lsstream/lib/covers/MessengerProvider$Request;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    const/4 v1, 0x0

    sput-object v1, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    .line 205
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 206
    sget-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    monitor-exit v2

    return v1

    .line 201
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #request:Lsstream/lib/covers/MessengerProvider$Request;
    check-cast v0, Lsstream/lib/covers/MessengerProvider$Request;

    .line 202
    .restart local v0       #request:Lsstream/lib/covers/MessengerProvider$Request;
    iget-object v3, v0, Lsstream/lib/covers/MessengerProvider$Request;->mListener:Lsstream/lib/covers/StreamUpdateListener;

    sget-object v4, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DISCONNECTED_FROM_SSTREAM:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    invoke-interface {v3, v4}, Lsstream/lib/covers/StreamUpdateListener;->onFailure(Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;)V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static sendMessage(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "what"
    .parameter "bundle"

    .prologue
    .line 216
    sget-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 225
    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    :cond_2
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method connectServer()Z
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sstream.flipboard.service.MessengerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, remoteMessengerService:Landroid/content/Intent;
    sget-object v1, Lsstream/lib/covers/MessengerProvider;->mContext:Landroid/content/Context;

    sget-object v2, Lsstream/lib/covers/MessengerProvider;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    .line 182
    sget-boolean v1, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    return v1
.end method

.method updateStoryItems(Ljava/lang/String;Lsstream/lib/covers/StreamUpdateListener;)V
    .locals 7
    .parameter "streamId"
    .parameter "listener"

    .prologue
    .line 246
    sget-object v4, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    monitor-enter v4

    .line 247
    :try_start_0
    sget-object v3, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "stream_id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v2, Lsstream/lib/covers/MessengerProvider$Request;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p2, v3}, Lsstream/lib/covers/MessengerProvider$Request;-><init>(Lsstream/lib/covers/MessengerProvider;Landroid/os/Bundle;Lsstream/lib/covers/StreamUpdateListener;Z)V

    .line 254
    .local v2, request:Lsstream/lib/covers/MessengerProvider$Request;
    sget-object v3, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v3, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    if-nez v3, :cond_1

    .line 257
    invoke-virtual {p0}, Lsstream/lib/covers/MessengerProvider;->connectServer()Z

    .line 258
    sget-boolean v3, Lsstream/lib/covers/MessengerProvider;->mIsBound:Z

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "CoverLockLibrary"

    const-string v5, "Binding"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #request:Lsstream/lib/covers/MessengerProvider$Request;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 275
    return-void

    .line 263
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #request:Lsstream/lib/covers/MessengerProvider$Request;
    :cond_1
    sget-object v3, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsstream/lib/covers/MessengerProvider$Request;

    .line 264
    .local v1, req:Lsstream/lib/covers/MessengerProvider$Request;
    iget-boolean v5, v1, Lsstream/lib/covers/MessengerProvider$Request;->mIsSent:Z

    if-nez v5, :cond_2

    .line 265
    const/4 v5, 0x3

    iget-object v6, v1, Lsstream/lib/covers/MessengerProvider$Request;->mBundle:Landroid/os/Bundle;

    invoke-static {v5, v6}, Lsstream/lib/covers/MessengerProvider;->sendMessage(ILandroid/os/Bundle;)V

    .line 266
    const/4 v5, 0x1

    iput-boolean v5, v1, Lsstream/lib/covers/MessengerProvider$Request;->mIsSent:Z

    goto :goto_1

    .line 246
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #req:Lsstream/lib/covers/MessengerProvider$Request;
    .end local v2           #request:Lsstream/lib/covers/MessengerProvider$Request;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 272
    :cond_3
    :try_start_1
    sget-object v3, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->DUPLICATE_REQUEST:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;

    invoke-interface {p2, v3}, Lsstream/lib/covers/StreamUpdateListener;->onFailure(Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
