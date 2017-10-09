.class public Lcom/android/keyguard/MSimKeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardSimPukView;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;,
        Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_LENGTH_ENTRY:I = 0x8

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private isWrongPUK:Z

.field private isWrongPUKCrash:Z

.field private mCheckMSimPukThread:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

.field private mHandler:Landroid/os/Handler;

.field private mPukHandler:Landroid/os/Handler;

.field private mRemainingCount:I

.field private mSubscription:I

.field private mWakelockSequence:I

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "MSimKeyguardSimPukView"

    sput-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;

    .line 68
    iput-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    .line 69
    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 72
    iput-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    .line 73
    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    .line 358
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    .line 134
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->setMaxLength(I)V

    .line 135
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimIconResId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/MSimKeyguardSimPukView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/MSimKeyguardSimPukView;Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;)Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckMSimPukThread:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    return-object p1
.end method

.method private getSimIconResId()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 424
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v1

    .line 426
    .local v1, "simSlotNum":I
    const-string v2, "ril.MSIMM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 428
    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    .line 435
    .end local v0    # "mSimMode":Ljava/lang/String;
    .end local v1    # "simSlotNum":I
    :goto_0
    return v2

    .line 429
    .restart local v0    # "mSimMode":Ljava/lang/String;
    .restart local v1    # "simSlotNum":I
    :cond_0
    if-nez v1, :cond_1

    .line 430
    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_1:I

    goto :goto_0

    .line 431
    :cond_1
    if-ne v1, v4, :cond_2

    .line 432
    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    goto :goto_0

    .line 435
    .end local v0    # "mSimMode":Ljava/lang/String;
    .end local v1    # "simSlotNum":I
    :cond_2
    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    goto :goto_0
.end method

.method private getSimPukRetry()I
    .locals 4

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    .line 384
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 385
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetryForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 389
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPukRetry() mSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v0

    .line 387
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1, "seq"    # I

    .prologue
    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->setKeepScreenOn(Z)V

    .line 375
    :cond_0
    monitor-exit p0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/android/keyguard/R$id;->msim_pukEntry:I

    return v0
.end method

.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 333
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->msim_kg_sim_pin_msg_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V

    .line 164
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPukView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 185
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 198
    :cond_0
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .param p1, "holdMs"    # I

    .prologue
    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->setKeepScreenOn(Z)V

    .line 351
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    monitor-exit p0

    .line 356
    return-void

    .line 355
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 413
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset()--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 419
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    .line 420
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->reset()V

    .line 421
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->resetState()V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 144
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public updateRetryCount()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method protected updateSim()V
    .locals 4

    .prologue
    .line 244
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    .line 245
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 248
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    const-string v1, "updateSim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckMSimPukThread:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckMSimPukThread:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    .line 323
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckMSimPukThread:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->start()V

    .line 328
    :cond_0
    return-void
.end method
