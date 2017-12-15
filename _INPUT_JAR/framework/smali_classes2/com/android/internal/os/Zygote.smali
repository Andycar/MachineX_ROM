.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final MOUNT_EXTERNAL_MULTIUSER:I = 0x2

.field public static final MOUNT_EXTERNAL_MULTIUSER_ALL:I = 0x3

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_SINGLEUSER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 9
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 196
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 197
    .local v0, "arg":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 199
    .end local v0    # "arg":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private static callPostForkChildHooks(ILjava/lang/String;)V
    .registers 5
    .param p0, "debugFlags"    # I
    .param p1, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 165
    .local v0, "startTime":J
    sget-object v2, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v2, p0, p1}, Ldalvik/system/ZygoteHooks;->postForkChild(ILjava/lang/String;)V

    .line 166
    const-string v2, "Zygote.callPostForkChildHooks"

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/Zygote;->checkTime(JLjava/lang/String;)V

    .line 167
    return-void
.end method

.method private static checkTime(JLjava/lang/String;)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 122
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 124
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_30
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 5
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 178
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p0, v0, v2

    .line 180
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_11
    aget-object v2, v0, v2

    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_16} :catch_17

    .line 184
    return-void

    .line 181
    :catch_17
    move-exception v1

    .line 182
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    .registers 17
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "category"    # I
    .param p8, "accessInfo"    # I
    .param p9, "niceName"    # Ljava/lang/String;
    .param p10, "fdsToClose"    # [I
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 94
    .local v2, "startTime":J
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 95
    const-string v1, "Zygote.preFork"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/Zygote;->checkTime(JLjava/lang/String;)V

    .line 96
    invoke-static/range {p0 .. p12}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "pid":I
    const-string v1, "Zygote.nativeForkAndSpecialize"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/Zygote;->checkTime(JLjava/lang/String;)V

    .line 102
    if-nez v0, :cond_24

    .line 103
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommonInThread()V

    .line 107
    :goto_1e
    const-string v1, "Zygote.postForkCommon"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/Zygote;->checkTime(JLjava/lang/String;)V

    .line 108
    return v0

    .line 105
    :cond_24
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    goto :goto_1e
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .registers 12
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .prologue
    .line 153
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 154
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 156
    .local v0, "pid":I
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 157
    return v0
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method
