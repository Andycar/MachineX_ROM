.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field private currentPosition:I

.field private errorIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 36
    iput p1, p0, Ljava/text/ParsePosition;->currentPosition:I

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Ljava/text/ParsePosition;

    if-nez v2, :cond_6

    .line 57
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 56
    check-cast v0, Ljava/text/ParsePosition;

    .line 57
    .local v0, "pos":Ljava/text/ParsePosition;
    iget v2, p0, Ljava/text/ParsePosition;->currentPosition:I

    iget v3, v0, Ljava/text/ParsePosition;->currentPosition:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Ljava/text/ParsePosition;->currentPosition:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Ljava/text/ParsePosition;->currentPosition:I

    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setErrorIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 91
    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 92
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 101
    iput p1, p0, Ljava/text/ParsePosition;->currentPosition:I

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
