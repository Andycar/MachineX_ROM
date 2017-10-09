.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "LibQmg.java"


# instance fields
.field private fname:Ljava/lang/String;

.field private handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private alreadyOpen()Z
    .registers 5

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static checkSupportQmg()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {}, Lcom/android/server/power/LibQmg;->qmgCheckSupportQmg()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static native qmgCheckSupportQmg()I
.end method

.method public static native qmgClose(J)I
.end method

.method public static native qmgGetCurrentFrame(J)I
.end method

.method public static native qmgGetDelayTime(J)I
.end method

.method public static native qmgGetHeight(J)I
.end method

.method public static native qmgGetWidth(J)I
.end method

.method public static native qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)J
.end method

.method public static native qmgSetCurrentFrame(JI)I
.end method


# virtual methods
.method public close()I
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/power/LibQmg;->alreadyOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    move-result v0

    .line 73
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public ensureQmgHandle()V
    .registers 5

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 32
    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 34
    :cond_10
    return-void
.end method

.method public getCurrentFrame()I
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 48
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetCurrentFrame(J)I

    move-result v0

    return v0
.end method

.method public getDelayTime()I
    .registers 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 58
    iget-wide v2, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v2, v3}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result v0

    .line 59
    .local v0, "delayTime":I
    if-gtz v0, :cond_d

    .line 60
    const/16 v0, 0x42

    .line 62
    :cond_d
    return v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 43
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 38
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    move-result v0

    return v0
.end method

.method public loadFrame(Landroid/graphics/Bitmap;)I
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public setCurrentFrame(I)I
    .registers 4
    .param p1, "frameNum"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 53
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/server/power/LibQmg;->qmgSetCurrentFrame(JI)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "fname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, " w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, " d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
