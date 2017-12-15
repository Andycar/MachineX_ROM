.class public Lcom/absolute/android/persistservice/WatchdogInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_consecutiveRestartCount:Ljava/lang/Integer;

.field private m_startTimestamp:Ljava/lang/Long;

.field private m_totalRestarts:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method protected final c()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method protected final f()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method protected final g()J
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final h()V
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consecutive restarts = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total restarts = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_totalRestarts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_consecutiveRestartCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_67

    .line 124
    iget-object v1, p0, Lcom/absolute/android/persistservice/WatchdogInfo;->m_startTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 126
    sub-long v2, v4, v2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Msec since last restart = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
