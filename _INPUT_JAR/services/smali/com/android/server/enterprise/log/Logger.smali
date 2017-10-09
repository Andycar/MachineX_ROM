.class public abstract Lcom/android/server/enterprise/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field protected level:I

.field protected loggerName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/log/Logger;->level:I

    .line 56
    iput-object p1, p0, Lcom/android/server/enterprise/log/Logger;->loggerName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public getLogLevel()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/enterprise/log/Logger;->level:I

    return v0
.end method

.method public isLoggable(I)Z
    .registers 3
    .param p1, "lvl"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/enterprise/log/Logger;->level:I

    if-gt v0, p1, :cond_6

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/enterprise/log/Logger;->level:I

    .line 70
    return-void
.end method
