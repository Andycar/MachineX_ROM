.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public requestPriority(III)I
    .registers 10
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3f5

    if-ne v3, v4, :cond_15

    if-lt p3, v5, :cond_15

    if-gt p3, v2, :cond_15

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    if-eq v3, p1, :cond_24

    .line 51
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x40e

    if-ne v3, v4, :cond_23

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    if-eq v3, p1, :cond_24

    .line 65
    :cond_23
    :goto_23
    return v1

    .line 58
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v3, p1, :cond_2b

    const/4 v2, 0x4

    :cond_2b
    invoke-static {p2, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 61
    const/4 v2, 0x1

    invoke-static {p2, v2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_32} :catch_34

    .line 65
    const/4 v1, 0x0

    goto :goto_23

    .line 62
    :catch_34
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_23
.end method
