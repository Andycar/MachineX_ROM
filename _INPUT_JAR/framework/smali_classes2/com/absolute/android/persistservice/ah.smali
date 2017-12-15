.class public final Lcom/absolute/android/persistservice/ah;
.super Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/absolute/android/persistservice/y;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/y;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    .line 28
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/y;->a()V

    .line 56
    return-void
.end method

.method public final getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/y;->a(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxLogSizeKB()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/y;->c()I

    move-result v0

    return v0
.end method

.method public final getNumberOfLogs()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/y;->b()I

    move-result v0

    return v0
.end method

.method public final logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final setSize(II)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/absolute/android/persistservice/ah;->a:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1, p2}, Lcom/absolute/android/persistservice/y;->a(II)V

    .line 49
    return-void
.end method
