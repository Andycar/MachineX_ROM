.class public Landroid/filterfw/core/NativeFrame;
.super Landroid/filterfw/core/Frame;
.source "NativeFrame.java"


# instance fields
.field private nativeFrameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 229
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    .line 38
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    .line 39
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->nativeAllocate(I)Z

    .line 40
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p0, v1}, Landroid/filterfw/core/NativeFrame;->setReusable(Z)V

    .line 41
    return-void

    .line 40
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z
.end method

.method private native getNativeCapacity()I
.end method

.method private native getNativeData(I)[B
.end method

.method private native getNativeFloats(I)[F
.end method

.method private native getNativeInts(I)[I
.end method

.method private native nativeAllocate(I)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private static native nativeFloatSize()I
.end method

.method private static native nativeIntSize()I
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 188
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Attempting to get Bitmap for non 2-dimensional native frame!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_13
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 194
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    .line 195
    .local v0, "bps":I
    invoke-direct {p0, v2, v1, v0}, Landroid/filterfw/core/NativeFrame;->getNativeBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-nez v3, :cond_43

    .line 196
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not get bitmap data from native frame!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_43
    return-object v2
.end method

.method public getCapacity()I
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->getNativeCapacity()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeFrame;->getNativeData(I)[B

    move-result-object v0

    .line 164
    .local v0, "data":[B
    if-nez v0, :cond_10

    const/4 v1, 0x0

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_f
.end method

.method public getFloats()[F
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeFloats(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getInts()[I
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeInts(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 72
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 105
    :goto_10
    return-object v2

    .line 76
    :cond_11
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "structClass":Ljava/lang/Class;
    if-nez v1, :cond_23

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Attempting to get object data from frame that does not specify a structure object class!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_23
    const-class v3, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "NativeFrame object class must be a subclass of NativeBuffer!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_33
    const/4 v2, 0x0

    .line 91
    .local v2, "structData":Landroid/filterfw/core/NativeBuffer;
    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_48

    .line 98
    .restart local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeFrame;->getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not get the native structured data for frame!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    .end local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    :catch_48
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate new structure instance of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    :cond_68
    invoke-virtual {v2, p0}, Landroid/filterfw/core/NativeBuffer;->attachToFrame(Landroid/filterfw/core/Frame;)V

    goto :goto_10
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized releaseNativeAllocation()V
    .registers 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->nativeDeallocate()Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 170
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_16

    .line 171
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Attempting to set Bitmap for non 2-dimensional native frame!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_16
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_32

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 174
    :cond_32
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bitmap dimensions do not match native frame dimensions!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_3a
    invoke-static {p1}, Landroid/filterfw/core/NativeFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    .local v2, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 178
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    .line 179
    .local v0, "bps":I
    invoke-direct {p0, v2, v1, v0}, Landroid/filterfw/core/NativeFrame;->setNativeBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-nez v3, :cond_58

    .line 180
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not set native frame bitmap data!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_58
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 148
    .local v0, "bytes":[B
    add-int v1, p3, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_3e

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset and length exceed buffer size in native setData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes given, but only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes available!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_3e
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-eq v1, p3, :cond_79

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data size in setData does not match native frame size: Frame size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes given!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_79
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/NativeFrame;->setNativeData([BII)Z

    move-result v1

    if-nez v1, :cond_87

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set native frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_87
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "smaller native frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_52
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_5c

    .line 212
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    .line 220
    :goto_5b
    return-void

    .line 213
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_5c
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_66

    .line 214
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_5b

    .line 215
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_66
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_72

    .line 216
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/NativeFrame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_5b

    .line 218
    :cond_72
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto :goto_5b
.end method

.method public setFloats([F)V
    .registers 6
    .param p1, "floats"    # [F

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 128
    array-length v0, p1

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-le v0, v1, :cond_4a

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeFrame cannot hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " floats. (Can only hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " floats)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_4a
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeFloats([F)Z

    move-result v0

    if-nez v0, :cond_58

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_58
    return-void
.end method

.method public setInts([I)V
    .registers 6
    .param p1, "ints"    # [I

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 111
    array-length v0, p1

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-le v0, v1, :cond_4a

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeFrame cannot hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integers. (Can only hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integers)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4a
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeInts([I)Z

    move-result v0

    if-nez v0, :cond_58

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
