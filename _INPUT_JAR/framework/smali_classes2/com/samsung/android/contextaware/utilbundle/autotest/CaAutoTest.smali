.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.super Ljava/lang/Object;
.source "CaAutoTest.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;


# instance fields
.field private mDelayTime:I

.field private mStopFlag:Z


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "delayTime"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->setDelayTime(I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected final getDelayTime()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    return v0
.end method

.method protected final isStopTest()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return v0
.end method

.method public abstract run()V
.end method

.method protected final setDelayTime(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    .line 57
    return-void
.end method

.method public final setStopFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 78
    return-void
.end method

.method public final stopAutoTest()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 90
    return-void
.end method
