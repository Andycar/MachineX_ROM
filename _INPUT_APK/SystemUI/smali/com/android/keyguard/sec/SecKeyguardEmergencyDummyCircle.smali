.class public Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardEmergencyDummyCircle.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.android.phone.EmergencyDialer.LIST"

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field static final TAG:Ljava/lang/String; = "SecKeyguardEmergencyDummyCircle"


# instance fields
.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field private mDummyCircle:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mHelpTextView:Landroid/widget/TextView;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServiceState:I

.field private mServiceState2:I

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTempRect:Landroid/graphics/Rect;

    .line 71
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 72
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 73
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 75
    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    .line 76
    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    .line 104
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 100
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 102
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isTouchInView(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC :: serviceState1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC :: serviceState2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-eq v2, v0, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-ne v2, v5, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    if-eq v2, v5, :cond_0

    .line 336
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    .line 328
    :cond_4
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC :: serviceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-ne v2, v5, :cond_3

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 336
    goto :goto_1
.end method

.method private launchEmergencyDialler()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method private updateCurrentView()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 483
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    const-string v2, "updateCurrentView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_3

    .line 485
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "visibility":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-ne v1, v5, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    if-ne v1, v5, :cond_2

    .line 494
    :cond_1
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 v0, 0x8

    .line 506
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 509
    .end local v0    # "visibility":I
    :cond_3
    return-void

    .line 499
    .restart local v0    # "visibility":I
    :cond_4
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    if-ne v1, v5, :cond_2

    .line 502
    :cond_5
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 1
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "phoneState"    # I

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateCurrentView()V

    .line 341
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 124
    .local v0, "action":I
    const/4 v1, 0x0

    .line 126
    .local v1, "handled":Z
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    .line 129
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDispatchInitX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDispatchInitY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->isTouchInView(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    const-string v3, "isTouchInView = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    const/4 v1, 0x1

    .line 140
    :cond_1
    if-nez v1, :cond_2

    .line 141
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 144
    :cond_2
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 415
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    move v0, v2

    .line 417
    .local v0, "isHelpTextEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 422
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 424
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 434
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 447
    :cond_4
    :goto_2
    return-void

    .end local v0    # "isHelpTextEnabled":Z
    :cond_5
    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    .restart local v0    # "isHelpTextEnabled":Z
    :cond_6
    const/4 v1, 0x4

    goto :goto_1

    .line 439
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_8

    .line 440
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 442
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 457
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 472
    :cond_2
    :goto_0
    return-void

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    .line 153
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 158
    .local v2, "subId":[J
    if-eqz v2, :cond_5

    .line 159
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 176
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 177
    if-eqz v2, :cond_6

    .line 178
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$3;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 211
    .end local v2    # "subId":[J
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState2:I

    .line 235
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 236
    .local v0, "phoneState":I
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 237
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 239
    sget v3, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/EmergencyButton;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 240
    sget v3, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    .line 241
    sget v3, Lcom/android/keyguard/R$id;->dummy_emergency_button:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    :cond_4
    return-void

    .line 174
    .end local v0    # "phoneState":I
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v2    # "subId":[J
    :cond_5
    const-string v3, "SecKeyguardEmergencyDummyCircle"

    const-string v4, "Slot 1 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :cond_6
    const-string v3, "SecKeyguardEmergencyDummyCircle"

    const-string v4, "Slot 2 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 196
    .end local v2    # "subId":[J
    :cond_7
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto/16 :goto_1

    .line 226
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_9

    .line 227
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 229
    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mServiceState:I

    goto :goto_2
.end method

.method public onUnlockExecuted()V
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallList()V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0
    .param p1, "isSwiped"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 480
    return-void
.end method

.method public setHelpText()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 374
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 390
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 5

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 350
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method
