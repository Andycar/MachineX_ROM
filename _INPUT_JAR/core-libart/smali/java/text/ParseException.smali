.class public Ljava/text/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x2583c2da188a0732L


# instance fields
.field private errorOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    iput p2, p0, Ljava/text/ParseException;->errorOffset:I

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorOffset()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Ljava/text/ParseException;->errorOffset:I

    return v0
.end method
