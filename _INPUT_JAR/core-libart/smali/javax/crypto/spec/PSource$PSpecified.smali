.class public final Ljavax/crypto/spec/PSource$PSpecified;
.super Ljavax/crypto/spec/PSource;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/spec/PSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PSpecified"
.end annotation


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0}, Ljavax/crypto/spec/PSource$PSpecified;-><init>()V

    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 72
    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 74
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "p"    # [B

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    .line 87
    if-nez p1, :cond_10

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "p == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_10
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 93
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 94
    return-void
.end method


# virtual methods
.method public getValue()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 103
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    iget-object v2, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 104
    return-object v0
.end method
