.class public Lcom/samsung/appdisabler/ImsiNumeric;
.super Ljava/lang/Object;
.source "ImsiNumeric.java"


# instance fields
.field private imsiNumericBase:Ljava/lang/String;

.field private imsiRangeEnd:Ljava/lang/String;

.field private imsiRangeStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImsiNumericBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiRangeEnd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    goto :goto_6
.end method

.method public getImsiRangeStart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    return-object v0
.end method

.method public setImsiNumericBase(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiNumericBase"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 23
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setImsiRangeEnd(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiRangeEnd"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 52
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setImsiRangeStart(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiRangeStart"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 37
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiNumericBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 68
    :cond_8
    const/4 v0, 0x0

    .line 71
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
