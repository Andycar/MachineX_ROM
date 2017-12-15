.class public Lcom/samsung/android/contextaware/manager/CaUserInfo;
.super Ljava/lang/Object;
.source "CaUserInfo.java"


# static fields
.field public static final DEFAULT_GENDER:I = 0x1

.field public static final DEFAULT_HEIGHT:D = 170.0

.field public static final DEFAULT_WEIGHT:D = 60.0

.field private static volatile instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;


# instance fields
.field private mUserGender:I

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/CaUserInfo;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_13

    .line 54
    const-class v1, Lcom/samsung/android/contextaware/manager/CaUserInfo;

    monitor-enter v1

    .line 55
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/CaUserInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    .line 58
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 60
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->instance:Lcom/samsung/android/contextaware/manager/CaUserInfo;

    return-object v0

    .line 58
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final getUserGender()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    return v0
.end method

.method public final getUserHeight()D
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    return-wide v0
.end method

.method public final getUserWeight()D
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    return-wide v0
.end method

.method public final setUserGender(I)V
    .registers 2
    .param p1, "gender"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserGender:I

    .line 118
    return-void
.end method

.method public final setUserHeight(D)V
    .registers 4
    .param p1, "height"    # D

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserHeight:D

    .line 80
    return-void
.end method

.method public final setUserWeight(D)V
    .registers 4
    .param p1, "weight"    # D

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/samsung/android/contextaware/manager/CaUserInfo;->mUserWeight:D

    .line 99
    return-void
.end method
