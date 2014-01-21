.class public Lcom/android/mms/transaction/MMSStateBroadcaster;
.super Ljava/lang/Object;
.source "MMSStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x2

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_ERROR_RETRY_PENDING:B = 0x5t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_FAILED:B = 0x8t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_PENDING_AUTO_RETRIEVAL:B = 0x1t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_PENDING_MAN_RETRIEVAL:B = 0x3t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_RETRIEVAL_AUTO:B = 0x2t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_RETRIEVAL_MANUAL:B = 0x4t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_RETRIEVED:B = 0x7t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_SUSPENDED:B = 0x6t

.field public static final IQ_MMS_RECEIVING_STATE_TYPE_UNKNOWN:B = 0x0t

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED:S = 0xe5s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_PERMANENT_FAILURE:S = 0x18s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_PERMANENT_MESSAGE_NOT_FOUND:S = 0xe2s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_PERMANENT_SERVICE_DENIED:S = 0xe1s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_TRANSIENT_FAILURE:S = 0xc0s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_TRANSIENT_MESSAGE_NOT_FOUND:S = 0xc1s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_ERROR_TRANSIENT_NETWORK_PROBLEM:S = 0xc2s

.field public static final IQ_MMS_RETRIEVE_STATUS_TYPE_OK:S = 0x80s

.field static final LOG_TAG:Ljava/lang/String; = "MMSStateBroadcaster"

.field private static final PERMISSION_RECEIVE_MMS_TRANSACTION:Ljava/lang/String; = "android.phone.receiveMmsTransaction"

.field static final contentTypes:[Ljava/lang/String;

.field private static sInstance:Lcom/android/mms/transaction/MMSStateBroadcaster;


# instance fields
.field private Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

.field private Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

.field private Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

.field private Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

.field private mContext:Landroid/content/Context;

.field protected mIQClient:Lcom/carrieriq/iqagent/client/IQClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/MMSStateBroadcaster;->DBG:Z

    .line 65
    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "*/*"

    aput-object v3, v0, v2

    const-string v2, "text/*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/x-hdml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/x-ttml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/vnd.wap.wml"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/vnd.wap.wmlscript"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/vnd.wap.wta-event"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "multipart/*"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "multipart/mixed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "multipart/form-data"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "multipart/byterantes"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "multipart/alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "application/*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "application/java-vm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "application/x-www-form-urlencoded"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "application/x-hdmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "application/vnd.wap.wmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "application/vnd.wap.wmlscriptc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "application/vnd.wap.wta-eventc"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "application/vnd.wap.uaprof"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "application/vnd.wap.wtls-ca-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "application/vnd.wap.wtls-user-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "application/x-x509-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "application/x-x509-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "image/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "image/tiff"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "application/vnd.wap.multipart.*"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "application/vnd.wap.multipart.mixed"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "application/vnd.wap.multipart.form-data"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "application/vnd.wap.multipart.byteranges"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "application/vnd.wap.multipart.alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "application/vnd.wap.wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "application/x-x968-cross-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "application/x-x968-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "application/x-x968-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "text/vnd.wap.si"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "application/vnd.wap.sic"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "text/vnd.wap.sl"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "application/vnd.wap.slc"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "text/vnd.wap.co"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "application/vnd.wap.coc"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "application/vnd.wap.multipart.related"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "application/vnd.wap.sia"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "text/vnd.wap.connectivity-xml"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "application/pkcs7-mime"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "application/vnd.wap.hashed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "application/vnd.wap.signed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "application/vnd.wap.cert-response"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "application/xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "application/wml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "application/vnd.wap.mms-message"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "application/vnd.wap.rollover-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "application/vnd.wap.locc+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "application/vnd.wap.loc+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "application/vnd.syncml.dm+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "application/vnd.syncml.dm+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "application/vnd.wap.xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "application/vnd.wv.csp.cir"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "application/vnd.oma.dd+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "application/vnd.oma.drm.message"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "application/vnd.oma.drm.content"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "application/vnd.oma.drm.rights+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "application/vnd.wv.csp+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "application/vnd.wv.csp+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "application/vnd.syncml.ds.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "audio/*"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "video/*"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "application/vnd.oma.dd2+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "application/mikey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MMSStateBroadcaster;->contentTypes:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 26
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    .line 39
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    .line 40
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    .line 41
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    .line 42
    new-instance v0, Lcom/carrieriq/iqagent/client/IQClient;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/IQClient;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/MMSStateBroadcaster;)Lcom/android/mms/transaction/MMSStateBroadcaster;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->sInstance:Lcom/android/mms/transaction/MMSStateBroadcaster;

    return-object p0
.end method


# virtual methods
.method public sendMMSRetrievalEnd(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "contentType"
    .parameter "errCode"
    .parameter "resultCode"
    .parameter "mmsVersion"
    .parameter "mmsTid"
    .parameter "mmsMid"
    .parameter "lUrl"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "com.carrieriq.iqagent.ClientAccess"

    const-string v3, "No permission to CIQ"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, numContentType:I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 218
    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    :cond_0
    if-nez p3, :cond_1

    .line 223
    const/16 p3, 0x80

    .line 225
    :cond_1
    const/16 v1, 0x80

    if-eq p3, v1, :cond_2

    .line 226
    const/4 p2, 0x1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iput v0, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwContentType:I

    .line 230
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iput p2, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwErrorCode:I

    .line 231
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    int-to-short v2, p3

    iput-short v2, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wResultCode:S

    .line 232
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    int-to-short v2, p4

    iput-short v2, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wMmsVersion:S

    .line 233
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iput-object p5, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsTransId:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iput-object p6, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsMsgId:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iput-object p7, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szLocationUrl:Ljava/lang/String;

    .line 236
    sget-boolean v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "MMSStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Mg15 :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwContentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->dwErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget-short v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wResultCode:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget-short v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->wMmsVersion:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szMmsMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->szLocationUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg15:Lcom/carrieriq/iqagent/client/metrics/mg/MG15;

    invoke-virtual {v1, v2}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 239
    return-void

    .line 217
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "retryCnt"
    .parameter "resultCode"
    .parameter "errCode"
    .parameter "mmsTid"
    .parameter "lUrl"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "com.carrieriq.iqagent.ClientAccess"

    const-string v2, "No permission to CIQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez p3, :cond_0

    .line 196
    const/16 p3, 0x80

    .line 199
    :cond_0
    const/16 v0, 0x80

    if-eq p3, v0, :cond_1

    .line 200
    const/4 p4, 0x1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucState:B

    .line 204
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iput-byte p2, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucRetryCount:B

    .line 205
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    int-to-short v1, p3

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->wResultCode:S

    .line 206
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iput p4, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->dwErrorCode:I

    .line 207
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iput-object p5, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szMmsTransId:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iput-object p6, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szLocationUrl:Ljava/lang/String;

    .line 209
    sget-boolean v0, Lcom/android/mms/transaction/MMSStateBroadcaster;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MMSStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Mg14 :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget-byte v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucState:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget-byte v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->ucRetryCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget-short v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->wResultCode:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->dwErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG14;->szLocationUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg14:Lcom/carrieriq/iqagent/client/metrics/mg/MG14;

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 211
    return-void
.end method

.method public sendMMSSendingEnd(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "resultCode"
    .parameter "mmsVersion"
    .parameter "mmsTid"
    .parameter "mmsMid"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "com.carrieriq.iqagent.ClientAccess"

    const-string v2, "No permission to CIQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-nez p2, :cond_0

    .line 177
    const/16 p2, 0x80

    .line 179
    :cond_0
    const/16 v0, 0x80

    if-eq p2, v0, :cond_1

    .line 180
    const/4 p1, 0x1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iput p1, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->dwErrorCode:I

    .line 184
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    int-to-short v1, p2

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wResultCode:S

    .line 185
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    int-to-short v1, p3

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wMmsVersion:S

    .line 186
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iput-object p4, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsTransId:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iput-object p5, v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsMsgId:Ljava/lang/String;

    .line 188
    sget-boolean v0, Lcom/android/mms/transaction/MMSStateBroadcaster;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MMSStateBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Mg12 :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iget v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->dwErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iget-short v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wResultCode:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iget-short v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wMmsVersion:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg12:Lcom/carrieriq/iqagent/client/metrics/mg/MG12;

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 190
    return-void
.end method

.method public sendMMSSendingStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "size"
    .parameter "contentType"
    .parameter "mmsVersion"
    .parameter "mmsTid"
    .parameter "sender"
    .parameter "recipient"
    .parameter "url"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "com.carrieriq.iqagent.ClientAccess"

    const-string v3, "No permission to CIQ"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, numContentType:I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    long-to-int v2, p1

    iput v2, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->dwSize:I

    .line 162
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iput v0, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->dwContentType:I

    .line 163
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    int-to-short v2, p4

    iput-short v2, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->shMmsVersion:S

    .line 164
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iput-object p5, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szMmsTransId:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iput-object p6, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szSender:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iput-object p7, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szRecipient:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iput-object p8, v1, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szRelayURL:Ljava/lang/String;

    .line 168
    sget-boolean v1, Lcom/android/mms/transaction/MMSStateBroadcaster;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "MMSStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Mg11 :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->dwSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->dwContentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget-short v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->shMmsVersion:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szSender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szRecipient:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    iget-object v3, v3, Lcom/carrieriq/iqagent/client/metrics/mg/MG11;->szRelayURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v2, p0, Lcom/android/mms/transaction/MMSStateBroadcaster;->Mg11:Lcom/carrieriq/iqagent/client/metrics/mg/MG11;

    invoke-virtual {v1, v2}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 171
    return-void

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
