.class public final Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
.super Ljava/lang/Object;
.source "UidSipperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidSipperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerConsumingPackages"
.end annotation


# instance fields
.field private count:I

.field private packages:[Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "names"    # [Ljava/lang/String;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    .line 281
    iput p2, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    .line 283
    iput-object p3, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/internal/os/UidSipperImpl$1;

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "names"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    .line 259
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "packageNames":[Ljava/lang/String;
    array-length v1, v0

    iput v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    .line 263
    iget v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    if-eqz v1, :cond_1d

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 265
    iput v2, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    .line 269
    :cond_1d
    iget v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    if-eqz v1, :cond_23

    .line 271
    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    .line 275
    :cond_23
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/internal/os/UidSipperImpl$1;

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPackageCount()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    return v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    return-object v0
.end method
