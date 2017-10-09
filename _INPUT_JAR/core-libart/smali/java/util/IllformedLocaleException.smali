.class public Ljava/util/IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "IllformedLocaleException.java"


# instance fields
.field private final errorIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    iput p2, p0, Ljava/util/IllformedLocaleException;->errorIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Ljava/util/IllformedLocaleException;->errorIndex:I

    return v0
.end method
