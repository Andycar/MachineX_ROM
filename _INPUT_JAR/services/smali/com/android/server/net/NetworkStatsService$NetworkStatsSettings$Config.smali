.class public Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final bucketDuration:J

.field public final deleteAgeMillis:J

.field public final rotateAgeMillis:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 8
    .param p1, "bucketDuration"    # J
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    .line 205
    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    .line 206
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    .line 207
    return-void
.end method
