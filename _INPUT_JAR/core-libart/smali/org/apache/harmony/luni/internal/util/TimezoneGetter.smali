.class public abstract Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
.super Ljava/lang/Object;
.source "TimezoneGetter.java"


# static fields
.field private static instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V
    .registers 3
    .param p0, "getter"    # Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    .prologue
    .line 43
    sget-object v0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    if-eqz v0, :cond_c

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TimezoneGetter instance already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_c
    sput-object p0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
