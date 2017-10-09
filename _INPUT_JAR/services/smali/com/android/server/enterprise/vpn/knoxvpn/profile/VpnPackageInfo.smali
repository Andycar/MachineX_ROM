.class public Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
.super Ljava/lang/Object;
.source "VpnPackageInfo.java"


# instance fields
.field private mCid:I

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPackageName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I

    .line 53
    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I

    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized getCid()I
    .registers 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPackageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUid()I
    .registers 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCid(I)V
    .registers 3
    .param p1, "cid"    # I

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPackageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
