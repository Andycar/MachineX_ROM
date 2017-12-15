.class public Lcom/absolute/android/persistservice/PersistedAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_apkDigest:Ljava/lang/String;

.field private m_apkPath:Ljava/lang/String;

.field private m_appProfile:Lcom/absolute/android/persistence/AppProfile;

.field private m_flags:Ljava/lang/Integer;

.field private m_updateAttemptCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    .line 45
    iput-object p2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    .line 48
    iput-object p3, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a()Lcom/absolute/android/persistence/AppProfile;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    return-object v0
.end method

.method protected final a(I)V
    .registers 3

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method protected final a(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    .line 69
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(I)V
    .registers 3

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    .line 129
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected final c()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    if-ne p0, p1, :cond_5

    .line 172
    :cond_4
    :goto_4
    return v0

    .line 165
    :cond_5
    instance-of v2, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    if-nez v2, :cond_b

    move v0, v1

    .line 166
    goto :goto_4

    .line 170
    :cond_b
    check-cast p1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 172
    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method
