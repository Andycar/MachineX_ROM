.class Ljava/text/Bidi$Run;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Run"
.end annotation


# instance fields
.field private final level:I

.field private final limit:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "level"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Ljava/text/Bidi$Run;->start:I

    .line 71
    iput p2, p0, Ljava/text/Bidi$Run;->limit:I

    .line 72
    iput p3, p0, Ljava/text/Bidi$Run;->level:I

    .line 73
    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Ljava/text/Bidi$Run;->level:I

    return v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Ljava/text/Bidi$Run;->limit:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Ljava/text/Bidi$Run;->start:I

    return v0
.end method
