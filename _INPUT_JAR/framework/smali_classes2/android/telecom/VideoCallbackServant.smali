.class final Landroid/telecom/VideoCallbackServant;
.super Ljava/lang/Object;
.source "VideoCallbackServant.java"


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x4

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x5

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x3

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x2

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x0

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private final mDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mStub:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IVideoCallback;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/internal/telecom/IVideoCallback;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/telecom/VideoCallbackServant$1;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$1;-><init>(Landroid/telecom/VideoCallbackServant;)V

    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/telecom/VideoCallbackServant$2;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$2;-><init>(Landroid/telecom/VideoCallbackServant;)V

    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    .line 154
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallbackServant;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallbackServant;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getStub()Lcom/android/internal/telecom/IVideoCallback;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    return-object v0
.end method
