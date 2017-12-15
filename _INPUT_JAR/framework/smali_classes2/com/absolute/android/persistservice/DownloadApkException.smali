.class public Lcom/absolute/android/persistservice/DownloadApkException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_isConnectivityFailure:Z

.field private m_isFatal:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 73
    iput-boolean p3, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 43
    iput-boolean p2, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 57
    iput-boolean p2, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 58
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 29
    iput-boolean p1, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    return v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 104
    return-void
.end method
