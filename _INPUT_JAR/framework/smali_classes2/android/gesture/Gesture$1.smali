.class final Landroid/gesture/Gesture$1;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/gesture/Gesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 288
    .local v2, "gestureID":J
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 292
    .local v4, "inStream":Ljava/io/DataInputStream;
    :try_start_13
    invoke-static {v4}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_20
    .catchall {:try_start_13 .. :try_end_16} :catchall_2c

    move-result-object v1

    .line 296
    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 299
    :goto_1a
    if-eqz v1, :cond_1f

    .line 300
    # setter for: Landroid/gesture/Gesture;->mGestureID:J
    invoke-static {v1, v2, v3}, Landroid/gesture/Gesture;->access$002(Landroid/gesture/Gesture;J)J

    .line 303
    :cond_1f
    return-object v1

    .line 293
    :catch_20
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    :try_start_21
    const-string v5, "Gestures"

    const-string v6, "Error reading Gesture from parcel:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 296
    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1a

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2c
    move-exception v5

    invoke-static {v4}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/gesture/Gesture;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 307
    new-array v0, p1, [Landroid/gesture/Gesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->newArray(I)[Landroid/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method
