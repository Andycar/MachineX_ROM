.class public Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z = true

.field private static final SVIEWCOVERBASE_CLASS:Ljava/lang/String; = "com.android.systemui.cover.SViewCoverService"

.field private static final SVIEWCOVERBASE_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SVIEWCOVER_UPDATE_COVERSTATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SViewCoverBaseServiceDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mPendingCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

.field private mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

.field private final mSViewCoverConnection:Landroid/content/ServiceConnection;

.field private mSViewCoverIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    invoke-direct {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;-><init>(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.cover.SViewCoverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public isCoverViewShowing()Z
    .registers 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "value":Z
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v1, :cond_b

    .line 161
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->isCoverViewShowing()Z

    move-result v0

    .line 163
    :cond_b
    return v0
.end method

.method public onBindSViewCoverService()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-nez v0, :cond_28

    .line 95
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    .line 99
    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : can\'t bind to com.android.systemui.cover.SViewCoverService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_1d
    return-void

    .line 102
    :cond_1e
    iput-boolean v4, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    .line 104
    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 109
    :cond_28
    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public onCoverAppCovered(Z)I
    .registers 4
    .param p1, "covered"    # Z

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v1, :cond_b

    .line 169
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onCoverAppCovered(Z)I

    move-result v0

    .line 171
    :cond_b
    return v0
.end method

.method public onSViewCoverHide()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverHide()V

    .line 147
    :cond_9
    return-void
.end method

.method public onSViewCoverShow()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverShow()V

    .line 141
    :cond_9
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSystemReady()V

    .line 135
    :goto_9
    return-void

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;->systemIsReady:Z

    goto :goto_9
.end method

.method public onUnbindSViewCoverService()V
    .registers 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-eqz v0, :cond_19

    .line 116
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    .line 120
    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_18
    return-void

    .line 124
    :cond_19
    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : can\'t unbind. It already unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v1, :cond_a

    .line 151
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 156
    :cond_9
    :goto_9
    return-void

    .line 152
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-eqz v1, :cond_9

    .line 153
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .local v0, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method
