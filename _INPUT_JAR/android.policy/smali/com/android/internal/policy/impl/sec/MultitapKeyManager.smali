.class public Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 5
    .param p1, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "samsungPhoneWindowManager"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 191
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 65
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    return p1
.end method

.method private handleDoubleTapOnPower()V
    .registers 3

    .prologue
    .line 232
    const-string v0, "MultitapKeyManager"

    const-string v1, "handleDoubleTapOnPower()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 235
    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 3

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 204
    const-string v0, "MultitapKeyManager"

    const-string v1, "Home tripleTap : DeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    .line 210
    :goto_17
    return-void

    .line 207
    :cond_18
    const-string v0, "MultitapKeyManager"

    const-string v1, "Home tripleTap : notDeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_17
.end method

.method private handleTripleTapOnPower()V
    .registers 3

    .prologue
    .line 248
    const-string v0, "MultitapKeyManager"

    const-string v1, "handleTripleTapOnPower()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    .line 251
    return-void
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 74
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 75
    .local v2, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_16

    move v0, v3

    .line 77
    .local v0, "down":Z
    :goto_11
    sparse-switch v1, :sswitch_data_13a

    :cond_14
    move v3, v4

    .line 162
    :cond_15
    :goto_15
    return v3

    .end local v0    # "down":Z
    :cond_16
    move v0, v4

    .line 75
    goto :goto_11

    .line 79
    .restart local v0    # "down":Z
    :sswitch_18
    if-nez v0, :cond_75

    .line 80
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v5, :cond_21

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    goto :goto_15

    .line 85
    :cond_21
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v5, :cond_44

    .line 86
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 90
    :cond_44
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v5

    if-nez v5, :cond_54

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 91
    :cond_54
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 93
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 98
    :cond_75
    if-nez v2, :cond_14

    .line 99
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 100
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v5, :cond_95

    .line 101
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 104
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    goto :goto_15

    .line 106
    :cond_91
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto :goto_15

    .line 109
    :cond_95
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v5, :cond_14

    .line 110
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 111
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnHome()V

    goto/16 :goto_15

    .line 118
    :sswitch_a7
    if-nez v0, :cond_fe

    .line 119
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    if-eqz v5, :cond_b1

    .line 120
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    goto/16 :goto_15

    .line 124
    :cond_b1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 125
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 126
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 127
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_d2

    const-string v5, "MultitapKeyManager"

    const-string v6, "Power tripletap timeout posted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_d2
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez p2, :cond_14

    .line 130
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 132
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "MultitapKeyManager"

    const-string v5, "Power doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 137
    :cond_fe
    if-nez v2, :cond_14

    .line 138
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 139
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    if-eqz v5, :cond_11b

    .line 140
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_130

    .line 142
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    if-eqz v5, :cond_12d

    .line 143
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 144
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnPower()V

    .line 153
    :cond_11b
    :goto_11b
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    if-eqz v5, :cond_14

    .line 154
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 155
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnPower()V

    goto/16 :goto_15

    .line 146
    :cond_12d
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_11b

    .line 149
    :cond_130
    const-string v5, "MultitapKeyManager"

    const-string v6, "mPowerTripleTap is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_11b

    .line 77
    :sswitch_data_13a
    .sparse-switch
        0x3 -> :sswitch_18
        0x1a -> :sswitch_a7
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .registers 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 168
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 189
    :goto_e
    return-void

    .line 174
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 175
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 181
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 182
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in access control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 187
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_e
.end method

.method public isHomeConsumed()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
