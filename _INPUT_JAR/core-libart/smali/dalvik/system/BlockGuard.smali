.class public final Ldalvik/system/BlockGuard;
.super Ljava/lang/Object;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/BlockGuard$BlockGuardPolicyException;,
        Ldalvik/system/BlockGuard$Policy;
    }
.end annotation


# static fields
.field public static final DISALLOW_DISK_READ:I = 0x2

.field public static final DISALLOW_DISK_WRITE:I = 0x1

.field public static final DISALLOW_NETWORK:I = 0x4

.field public static final LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

.field public static final PASS_RESTRICTIONS_VIA_RPC:I = 0x8

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_LOG:I = 0x10

.field private static threadPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ldalvik/system/BlockGuard$Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Ldalvik/system/BlockGuard$1;

    invoke-direct {v0}, Ldalvik/system/BlockGuard$1;-><init>()V

    sput-object v0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    .line 126
    new-instance v0, Ldalvik/system/BlockGuard$2;

    invoke-direct {v0}, Ldalvik/system/BlockGuard$2;-><init>()V

    sput-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPolicy()Ldalvik/system/BlockGuard$Policy;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/BlockGuard$Policy;

    return-object v0
.end method

.method public static setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V
    .registers 3
    .param p0, "policy"    # Ldalvik/system/BlockGuard$Policy;

    .prologue
    .line 149
    if-nez p0, :cond_a

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "policy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_a
    sget-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    return-void
.end method
