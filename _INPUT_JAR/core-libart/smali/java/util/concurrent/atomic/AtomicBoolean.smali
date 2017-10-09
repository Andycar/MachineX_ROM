.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 24
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    .line 29
    :try_start_6
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 32
    return-void

    .line 31
    :catch_17
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "initialValue"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 43
    return-void

    .line 42
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 70
    if-eqz p1, :cond_11

    move v4, v5

    .line 71
    .local v4, "e":I
    :goto_5
    if-eqz p2, :cond_13

    .line 72
    .local v5, "u":I
    :goto_7
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    .end local v4    # "e":I
    .end local v5    # "u":I
    :cond_11
    move v4, v0

    .line 70
    goto :goto_5

    .restart local v4    # "e":I
    :cond_13
    move v5, v0

    .line 71
    goto :goto_7
.end method

.method public final get()Z
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final getAndSet(Z)Z
    .registers 4
    .param p1, "newValue"    # Z

    .prologue
    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 122
    .local v0, "current":Z
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    return v0
.end method

.method public final lazySet(Z)V
    .registers 6
    .param p1, "newValue"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 110
    .local v0, "v":I
    :goto_3
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 111
    return-void

    .line 109
    .end local v0    # "v":I
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final set(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 100
    return-void

    .line 99
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakCompareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_11

    move v4, v5

    .line 89
    .local v4, "e":I
    :goto_5
    if-eqz p2, :cond_13

    .line 90
    .local v5, "u":I
    :goto_7
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    .end local v4    # "e":I
    .end local v5    # "u":I
    :cond_11
    move v4, v0

    .line 88
    goto :goto_5

    .restart local v4    # "e":I
    :cond_13
    move v5, v0

    .line 89
    goto :goto_7
.end method
