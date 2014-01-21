.class public Lcom/samsung/mms/location/LBSManager;
.super Ljava/lang/Object;
.source "LBSManager.java"


# static fields
.field private static final NBI_LANGUAGE:Ljava/lang/String; = "en-US"

.field public static final NBI_TOKEN:Ljava/lang/String; = "Lp6IlI7wtR73LiaiRM/peLWIzrdGD6xG7L/1PBcF"

.field private static final TAG:Ljava/lang/String; = "LBSManager"

.field private static mLocationProvider:Lcom/nbi/location/LocationProvider;

.field private static sInitCount:I

.field private static sInstance:Lcom/samsung/mms/location/LBSManager;

.field private static sNBIContext:Lcom/nbi/common/NBIContext;


# instance fields
.field private mContiniousLocationListener:Lcom/nbi/location/LocationListener;

.field private mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/nbi/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOneFixLocationListener:Lcom/nbi/location/LocationListener;

.field private mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/nbi/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private sCurrentBestLocation:Lcom/nbi/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 20
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 21
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v3, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    .line 24
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 192
    new-instance v1, Lcom/samsung/mms/location/LBSManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LBSManager$1;-><init>(Lcom/samsung/mms/location/LBSManager;)V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    .line 229
    new-instance v1, Lcom/samsung/mms/location/LBSManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LBSManager$2;-><init>(Lcom/samsung/mms/location/LBSManager;)V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    .line 67
    invoke-static {}, Lcom/nbi/location/LocationConfig;->createLocationConfig()Lcom/nbi/location/LocationConfig;

    move-result-object v0

    .line 68
    .local v0, config:Lcom/nbi/location/LocationConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationConfig;->setWarmUpFix(Z)V

    .line 70
    new-instance v1, Lcom/nbi/common/NBIContext;

    const-string v2, "Lp6IlI7wtR73LiaiRM/peLWIzrdGD6xG7L/1PBcF"

    invoke-direct {v1, p1, v2, v3}, Lcom/nbi/common/NBIContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 71
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    invoke-static {v1, v0}, Lcom/nbi/location/LocationProvider;->getInstance(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)Lcom/nbi/location/LocationProvider;

    move-result-object v1

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/LBSManager;)Lcom/nbi/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/mms/location/LBSManager;Lcom/nbi/location/Location;)Lcom/nbi/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 79
    const-class v1, Lcom/samsung/mms/location/LBSManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy sInitCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    .line 81
    sget v0, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    .line 83
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v0}, Lcom/samsung/mms/location/LBSManager;->releaseLocationManager()V

    .line 84
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v0}, Lcom/samsung/mms/location/LBSManager;->releaseNBIContext()V

    .line 85
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit v1

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/samsung/mms/location/LBSManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    const-class v3, Lcom/samsung/mms/location/LBSManager;

    monitor-enter v3

    :try_start_0
    const-string v4, "LBSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init sInitCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget v4, Lcom/samsung/mms/location/LBSManager;->sInitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_2

    .line 38
    if-nez p0, :cond_0

    .line 39
    :try_start_1
    new-instance v1, Lcom/nbi/location/LocationException;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nbi/location/LocationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lcom/nbi/location/LocationException;
    :try_start_2
    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 53
    .end local v0           #e:Lcom/nbi/location/LocationException;
    :goto_0
    monitor-exit v3

    return v1

    .line 41
    :cond_0
    :try_start_3
    sget-object v4, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    if-nez v4, :cond_1

    .line 42
    new-instance v4, Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v4, p0}, Lcom/samsung/mms/location/LBSManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    .line 44
    :cond_1
    const/4 v4, 0x1

    sput v4, Lcom/samsung/mms/location/LBSManager;->sInitCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/nbi/location/LocationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 52
    :cond_2
    :try_start_4
    sget v2, Lcom/samsung/mms/location/LBSManager;->sInitCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/mms/location/LBSManager;->sInitCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private releaseLocationManager()V
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-eqz v1, :cond_2

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    const-string v1, "LBSManagerLog"

    const-string v2, "release location cancel one Fix"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/nbi/location/LocationProvider;->cancelGetLocation(Lcom/nbi/location/LocationListener;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    const-string v1, "LBSManagerLog"

    const-string v2, "release location stop reciving Fixes"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/nbi/location/LocationProvider;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 107
    :cond_1
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    invoke-virtual {v1}, Lcom/nbi/location/LocationProvider;->onDestroy()V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_2
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 114
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseNBIContext()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->destroy()V

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelGetLocation(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "LBSManagerLog"

    const-string v1, "Cancel One Fix Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->cancelGetLocation(Lcom/nbi/location/LocationListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method public getCurrentBestLocation()Lcom/nbi/location/Location;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object v0
.end method

.method public getLocationManager()Lcom/nbi/location/LocationProvider;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    return-object v0
.end method

.method public getNBIContext()Lcom/nbi/common/NBIContext;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    return-object v0
.end method

.method public getOneFix(Lcom/nbi/location/LocationListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "providerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "LBSManagerLog"

    const-string v1, "Get One Fix Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1, p2}, Lcom/nbi/location/LocationProvider;->getOneFix(Lcom/nbi/location/LocationListener;I)V

    .line 149
    return-void
.end method

.method public startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v0, "LBSManagerLog"

    const-string v1, "Start Receiving Fixes"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 180
    return-void
.end method

.method public stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "LBSManagerLog"

    const-string v1, "Stop Receiving Fixes"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 169
    :cond_0
    return-void
.end method
