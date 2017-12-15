.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field mEGLContext:J

.field private mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_5

    .line 43
    :cond_4
    :goto_4
    return v1

    .line 39
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 43
    .local v0, "that":Lcom/google/android/gles_jni/EGLContextImpl;
    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    iget-wide v6, v0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 52
    const/16 v0, 0x11

    .line 53
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 54
    return v0
.end method
