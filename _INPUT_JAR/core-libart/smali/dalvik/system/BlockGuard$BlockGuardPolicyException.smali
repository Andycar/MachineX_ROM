.class public Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.super Ljava/lang/RuntimeException;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockGuardPolicyException"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPolicyState:I

.field private final mPolicyViolated:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 88
    iput p1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    .line 89
    iput p2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    .line 90
    iput-object p3, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 92
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " violation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_2c

    const-string v0, ""

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public getPolicy()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    return v0
.end method

.method public getPolicyViolation()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    return v0
.end method
