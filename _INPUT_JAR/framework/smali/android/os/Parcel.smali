.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SIZE:I = 0x1a

.field private static final VAL_SIZEF:I = 0x1b

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:J

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 199
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 200
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 286
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativePtr"    # J

    .prologue
    .line 2415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2420
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    .line 2421
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2440
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 2441
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_11

    .line 2442
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    .line 2444
    :cond_11
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2446
    :cond_13
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .registers 3

    .prologue
    .line 2434
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_9

    .line 2435
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)V

    .line 2437
    :cond_9
    return-void
.end method

.method private init(J)V
    .registers 6
    .param p1, "nativePtr"    # J

    .prologue
    .line 2424
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 2425
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2426
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 2431
    :goto_b
    return-void

    .line 2428
    :cond_c
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 2429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_b
.end method

.method private static native nativeAppendFrom(JJII)V
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
.end method

.method private static native nativeDataCapacity(J)I
.end method

.method private static native nativeDataPosition(J)I
.end method

.method private static native nativeDataSize(J)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(J)V
.end method

.method private static native nativeHasFileDescriptors(J)Z
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativePushAllowFds(JZ)Z
.end method

.method private static native nativeReadBlob(J)[B
.end method

.method private static native nativeReadDouble(J)D
.end method

.method private static native nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(J)F
.end method

.method private static native nativeReadInt(J)I
.end method

.method private static native nativeReadLong(J)J
.end method

.method private static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(J)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(JZ)V
.end method

.method private static native nativeSetDataCapacity(JI)V
.end method

.method private static native nativeSetDataPosition(JI)V
.end method

.method private static native nativeSetDataSize(JI)V
.end method

.method private static native nativeUnmarshall(J[BII)V
.end method

.method private static native nativeWriteBlob(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
.end method

.method private static native nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V
.end method

.method private static native nativeWriteFloat(JF)V
.end method

.method private static native nativeWriteInt(JI)V
.end method

.method private static native nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native nativeWriteLong(JJ)V
.end method

.method private static native nativeWriteString(JLjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(JLandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .registers 6

    .prologue
    .line 300
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 301
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_13

    .line 304
    :try_start_7
    aget-object v1, v2, v0

    .line 305
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_10

    .line 306
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 310
    monitor-exit v2

    .line 314
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_f
    return-object v1

    .line 303
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    .line 314
    new-instance v1, Landroid/os/Parcel;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_f

    .line 313
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .registers 2
    .param p0, "obj"    # I

    .prologue
    .line 2392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final obtain(J)Landroid/os/Parcel;
    .registers 6
    .param p0, "obj"    # J

    .prologue
    .line 2397
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2398
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 2400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_16

    .line 2401
    :try_start_7
    aget-object v1, v2, v0

    .line 2402
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_13

    .line 2403
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2407
    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;->init(J)V

    .line 2408
    monitor-exit v2

    .line 2412
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_12
    return-object v1

    .line 2400
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2411
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 2412
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_12

    .line 2411
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_c

    .line 2530
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2532
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2534
    .end local v1    # "value":Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2519
    :goto_0
    if-lez p2, :cond_c

    .line 2520
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2522
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2523
    add-int/lit8 p2, p2, -0x1

    .line 2524
    goto :goto_0

    .line 2525
    .end local v0    # "value":Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private final readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .registers 11
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2347
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2348
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 2352
    const/4 v6, 0x0

    .line 2372
    :goto_7
    return-object v6

    .line 2355
    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2356
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2358
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_11
    new-instance v4, Landroid/os/Parcel$2;

    invoke-direct {v4, p0, v0, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 2372
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1c} :catch_3d

    goto :goto_7

    .line 2373
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1d
    move-exception v2

    .line 2374
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2377
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3d
    move-exception v1

    .line 2378
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2538
    :goto_0
    if-lez p2, :cond_10

    .line 2539
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2540
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2542
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2543
    add-int/lit8 p2, p2, -0x1

    .line 2544
    goto :goto_0

    .line 2545
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 7
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .prologue
    const/4 v2, 0x1

    .line 2549
    :goto_1
    if-lez p2, :cond_16

    .line 2550
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2551
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_14

    move v1, v2

    .line 2553
    .local v1, "value":Z
    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2554
    add-int/lit8 p2, p2, -0x1

    .line 2555
    goto :goto_1

    .line 2551
    .end local v1    # "value":Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    .line 2556
    .end local v0    # "key":I
    :cond_16
    return-void
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 440
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)V

    .line 441
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .registers 5

    .prologue
    .line 1057
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1058
    .local v0, "N":I
    if-ltz v0, :cond_14

    .line 1059
    new-array v2, v0, [Landroid/os/IBinder;

    .line 1060
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 1061
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1060
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1065
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_14
    const/4 v2, 0x0

    :cond_15
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1988
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1989
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1990
    const/4 v1, 0x0

    .line 1997
    :cond_7
    return-object v1

    .line 1992
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1993
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_d
    if-lez v0, :cond_7

    .line 1994
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public final createBooleanArray()[Z
    .registers 5

    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 788
    .local v0, "N":I
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_21

    .line 789
    new-array v2, v0, [Z

    .line 790
    .local v2, "val":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_22

    .line 791
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_1a
    aput-boolean v3, v2, v1

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 791
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1a

    .line 795
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_21
    const/4 v2, 0x0

    :cond_22
    return-object v2
.end method

.method public final createByteArray()[B
    .registers 3

    .prologue
    .line 1756
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .registers 5

    .prologue
    .line 823
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 824
    .local v0, "N":I
    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1d

    .line 825
    new-array v2, v0, [C

    .line 826
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1e

    .line 827
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 831
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_1d
    const/4 v2, 0x0

    :cond_1e
    return-object v2
.end method

.method public final createDoubleArray()[D
    .registers 7

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 971
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1c

    .line 972
    new-array v2, v0, [D

    .line 973
    .local v2, "val":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 974
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 978
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createFloatArray()[F
    .registers 5

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 934
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1c

    .line 935
    new-array v2, v0, [F

    .line 936
    .local v2, "val":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 937
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 941
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createIntArray()[I
    .registers 5

    .prologue
    .line 859
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 860
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1c

    .line 861
    new-array v2, v0, [I

    .line 862
    .local v2, "val":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 863
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 867
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createLongArray()[J
    .registers 7

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    .local v0, "N":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1c

    .line 898
    new-array v2, v0, [J

    .line 899
    .local v2, "val":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 900
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 904
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1007
    .local v0, "N":I
    if-ltz v0, :cond_14

    .line 1008
    new-array v2, v0, [Ljava/lang/String;

    .line 1009
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 1010
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1014
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    :cond_15
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1964
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1965
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1966
    const/4 v1, 0x0

    .line 1973
    :cond_7
    return-object v1

    .line 1968
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1969
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    if-lez v0, :cond_7

    .line 1970
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2061
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2062
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 2063
    const/4 v2, 0x0

    .line 2071
    :cond_7
    return-object v2

    .line 2065
    :cond_8
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 2066
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_7

    .line 2067
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 2068
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2066
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 1901
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1902
    .local v0, "N":I
    if-gez v0, :cond_9

    move-object v1, v2

    .line 1914
    :cond_8
    return-object v1

    .line 1905
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1906
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_e
    if-lez v0, :cond_8

    .line 1907
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 1908
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1910
    :cond_20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public final dataAvail()I
    .registers 3

    .prologue
    .line 355
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .registers 3

    .prologue
    .line 373
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .registers 3

    .prologue
    .line 363
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .registers 3

    .prologue
    .line 347
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    .line 461
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2455
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2456
    return-void
.end method

.method public final hasFileDescriptors()Z
    .registers 3

    .prologue
    .line 447
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public final marshall()[B
    .registers 3

    .prologue
    .line 429
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .registers 4
    .param p1, "allowFds"    # Z

    .prologue
    .line 409
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1847
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1848
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1849
    const/4 v1, 0x0

    .line 1853
    :goto_7
    return-object v1

    .line 1851
    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    .line 1852
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1831
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1832
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1833
    const/4 v1, 0x0

    .line 1837
    :goto_7
    return-object v1

    .line 1835
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1836
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2510
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2511
    .local v0, "N":I
    if-gez v0, :cond_7

    .line 2515
    :goto_6
    return-void

    .line 2514
    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    goto :goto_6
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2476
    :goto_0
    if-lez p2, :cond_10

    .line 2478
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2483
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2484
    add-int/lit8 p2, p2, -0x1

    .line 2485
    goto :goto_0

    .line 2486
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    .line 2487
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2496
    :goto_0
    if-lez p2, :cond_10

    .line 2497
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2500
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2501
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    add-int/lit8 p2, p2, -0x1

    .line 2503
    goto :goto_0

    .line 2504
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .registers 6
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1071
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 1072
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 1073
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1076
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1078
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2034
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2035
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2036
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2037
    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 2038
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2037
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2040
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 2041
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2043
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 2044
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2043
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 2046
    :cond_2b
    return-void
.end method

.method public final readBlob()[B
    .registers 3

    .prologue
    .line 1779
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final readBooleanArray([Z)V
    .registers 6
    .param p1, "val"    # [Z

    .prologue
    .line 800
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 801
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_18

    .line 802
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 803
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_11
    aput-boolean v2, p1, v1

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 803
    :cond_16
    const/4 v2, 0x0

    goto :goto_11

    .line 806
    .end local v1    # "i":I
    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    .restart local v1    # "i":I
    :cond_20
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1682
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1692
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1693
    .local v1, "length":I
    if-gez v1, :cond_8

    .line 1695
    const/4 v0, 0x0

    .line 1702
    :cond_7
    :goto_7
    return-object v0

    .line 1698
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1699
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_7

    .line 1700
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readByte()B
    .registers 2

    .prologue
    .line 1635
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .registers 6
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1765
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1766
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_e

    .line 1767
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1771
    return-void

    .line 1769
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .registers 6
    .param p1, "val"    # [C

    .prologue
    .line 836
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 837
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_14

    .line 838
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 839
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 842
    .end local v1    # "i":I
    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    .restart local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1600
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 1808
    const/4 v0, 0x0

    .line 1810
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1811
    .local v2, "length":I
    if-ltz v2, :cond_15

    .line 1813
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_15

    .line 1817
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1815
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1821
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 4
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2252
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_d

    .line 2253
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2255
    :goto_c
    return-object v0

    .restart local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_d
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_c
.end method

.method public final readDouble()D
    .registers 3

    .prologue
    .line 1585
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .prologue
    .line 983
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 984
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 985
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 986
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 989
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 991
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readException()V
    .registers 3

    .prologue
    .line 1490
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1491
    .local v0, "code":I
    if-eqz v0, :cond_d

    .line 1492
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1495
    .end local v1    # "msg":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1538
    packed-switch p1, :pswitch_data_50

    .line 1554
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :pswitch_26
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1542
    :pswitch_2c
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1544
    :pswitch_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :pswitch_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :pswitch_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1550
    :pswitch_44
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    .line 1552
    :pswitch_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :pswitch_data_50
    .packed-switch -0x7
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .registers 5

    .prologue
    .line 1511
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1512
    .local v0, "code":I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_16

    .line 1513
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1514
    .local v1, "headerSize":I
    if-nez v1, :cond_17

    .line 1515
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :goto_15
    const/4 v0, 0x0

    .line 1527
    .end local v0    # "code":I
    .end local v1    # "headerSize":I
    :cond_16
    return v0

    .line 1521
    .restart local v0    # "code":I
    .restart local v1    # "headerSize":I
    :cond_17
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_15
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .prologue
    .line 1614
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1615
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_e

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public final readFloat()F
    .registers 3

    .prologue
    .line 1577
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .registers 6
    .param p1, "val"    # [F

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 947
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 948
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 949
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 952
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 954
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1667
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1668
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1669
    const/4 v1, 0x0

    .line 1673
    :goto_7
    return-object v1

    .line 1671
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1672
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readInt()I
    .registers 3

    .prologue
    .line 1562
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .registers 6
    .param p1, "val"    # [I

    .prologue
    .line 872
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 873
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 874
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 875
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 878
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1655
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1656
    return-void
.end method

.method public final readLong()J
    .registers 3

    .prologue
    .line 1569
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .prologue
    .line 909
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 912
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 915
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1644
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1645
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1646
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2460
    :goto_0
    if-lez p2, :cond_10

    .line 2461
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2462
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2463
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    add-int/lit8 p2, p2, -0x1

    .line 2465
    goto :goto_0

    .line 2466
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2239
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 2240
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v0, :cond_8

    .line 2241
    const/4 v1, 0x0

    .line 2246
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :goto_7
    return-object v1

    .line 2243
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_8
    instance-of v1, v0, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_15

    .line 2244
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_7

    .line 2246
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_15
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_7
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 6
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2326
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2327
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 2328
    const/4 v2, 0x0

    .line 2334
    :cond_7
    return-object v2

    .line 2330
    :cond_8
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2331
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_7

    .line 2332
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2331
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2261
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2262
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 2316
    :goto_7
    return-object v1

    .line 2266
    :cond_8
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v7

    .line 2267
    :try_start_b
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2268
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1f

    .line 2269
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2270
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    :cond_1f
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_55

    .line 2273
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_113

    .line 2275
    if-nez p1, :cond_58

    :try_start_29
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2277
    .local v0, "c":Ljava/lang/Class;
    :goto_2d
    const-string v6, "CREATOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2278
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_3a} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_3a} :catch_90
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_3a} :catch_c2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_3a} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_3a} :catch_f6
    .catchall {:try_start_29 .. :try_end_3a} :catchall_55

    .line 2306
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_110

    .line 2307
    :try_start_3c
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2314
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_55

    throw v6

    .line 2275
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_58
    const/4 v6, 0x1

    :try_start_59
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_5c} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_59 .. :try_end_5c} :catch_90
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5c} :catch_c2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_59 .. :try_end_5c} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5c} :catch_f6
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    move-result-object v0

    goto :goto_2d

    .line 2280
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :catch_5e
    move-exception v2

    .line 2281
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_5f
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2283
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2286
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_90
    move-exception v2

    .line 2287
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2289
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2292
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_c2
    move-exception v2

    .line 2293
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2297
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_dc
    move-exception v2

    .line 2298
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2302
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_f6
    move-exception v2

    .line 2303
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2312
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :cond_110
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_113
    monitor-exit v7
    :try_end_114
    .catchall {:try_start_5f .. :try_end_114} :catchall_55

    goto/16 :goto_7
.end method

.method public final readPersistableBundle()Landroid/os/PersistableBundle;
    .registers 2

    .prologue
    .line 1711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1722
    .local v1, "length":I
    if-gez v1, :cond_8

    .line 1724
    const/4 v0, 0x0

    .line 1731
    :cond_7
    :goto_7
    return-object v0

    .line 1727
    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    .line 1728
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_7

    .line 1729
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    .prologue
    .line 1620
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 2343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public final readSize()Landroid/util/Size;
    .registers 4

    .prologue
    .line 1738
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1739
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1740
    .local v0, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final readSizeF()Landroid/util/SizeF;
    .registers 4

    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1748
    .local v1, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1749
    .local v0, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1863
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1864
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1865
    const/4 v1, 0x0

    .line 1869
    :goto_7
    return-object v1

    .line 1867
    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1868
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_7
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 3

    .prologue
    .line 1878
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1879
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 1880
    const/4 v1, 0x0

    .line 1884
    :goto_7
    return-object v1

    .line 1882
    :cond_8
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1883
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_7
.end method

.method public final readString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1592
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .registers 6
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 1019
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1020
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_13

    .line 1021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 1022
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1025
    .end local v1    # "i":I
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    .restart local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1787
    const/4 v0, 0x0

    .line 1789
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1790
    .local v2, "length":I
    if-ltz v2, :cond_15

    .line 1792
    new-array v0, v2, [Ljava/lang/String;

    .line 1794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_15

    .line 1796
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1794
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1800
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2010
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2011
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2012
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2013
    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    .line 2014
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2013
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2016
    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    .line 2017
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2019
    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    .line 2020
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2019
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 2022
    :cond_2b
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 1607
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2075
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2076
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1d

    .line 2077
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_25

    .line 2078
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 2079
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2077
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2081
    :cond_19
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_16

    .line 2085
    .end local v1    # "i":I
    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2087
    .restart local v1    # "i":I
    :cond_25
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2095
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1930
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1931
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1932
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1933
    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_22

    if-ge v2, v1, :cond_22

    .line 1934
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 1935
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1933
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1937
    :cond_1e
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1940
    :cond_22
    :goto_22
    if-ge v2, v1, :cond_38

    .line 1941
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 1942
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1940
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1944
    :cond_34
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1947
    :cond_38
    :goto_38
    if-ge v2, v0, :cond_40

    .line 1948
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1947
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1950
    :cond_40
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    .line 2130
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2132
    .local v1, "type":I
    packed-switch v1, :pswitch_data_f4

    .line 2221
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 2222
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2134
    .end local v0    # "off":I
    :pswitch_3b
    const/4 v2, 0x0

    .line 2218
    :goto_3c
    return-object v2

    .line 2137
    :pswitch_3d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 2140
    :pswitch_42
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3c

    .line 2143
    :pswitch_4b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_3c

    .line 2146
    :pswitch_50
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_3c

    .line 2149
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_3c

    .line 2152
    :pswitch_5f
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3c

    .line 2155
    :pswitch_68
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_3c

    .line 2158
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3c

    .line 2161
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_85

    :goto_80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3c

    :cond_85
    const/4 v2, 0x0

    goto :goto_80

    .line 2164
    :pswitch_87
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3c

    .line 2167
    :pswitch_8c
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3c

    .line 2170
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_3c

    .line 2173
    :pswitch_96
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_3c

    .line 2176
    :pswitch_9b
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 2179
    :pswitch_a0
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3c

    .line 2182
    :pswitch_a5
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3c

    .line 2185
    :pswitch_aa
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_3c

    .line 2188
    :pswitch_af
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_3c

    .line 2191
    :pswitch_b4
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_3c

    .line 2194
    :pswitch_b9
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_3c

    .line 2197
    :pswitch_c3
    invoke-direct {p0, p1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_3c

    .line 2200
    :pswitch_c9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_3c

    .line 2203
    :pswitch_cf
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_3c

    .line 2206
    :pswitch_d5
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_3c

    .line 2209
    :pswitch_db
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_3c

    .line 2212
    :pswitch_e1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto/16 :goto_3c

    .line 2215
    :pswitch_e7
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v2

    goto/16 :goto_3c

    .line 2218
    :pswitch_ed
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object v2

    goto/16 :goto_3c

    .line 2132
    nop

    :pswitch_data_f4
    .packed-switch -0x1
        :pswitch_3b
        :pswitch_3d
        :pswitch_42
        :pswitch_4b
        :pswitch_db
        :pswitch_50
        :pswitch_55
        :pswitch_5f
        :pswitch_68
        :pswitch_71
        :pswitch_7a
        :pswitch_87
        :pswitch_8c
        :pswitch_cf
        :pswitch_96
        :pswitch_9b
        :pswitch_a5
        :pswitch_c9
        :pswitch_aa
        :pswitch_af
        :pswitch_b4
        :pswitch_b9
        :pswitch_c3
        :pswitch_d5
        :pswitch_91
        :pswitch_a0
        :pswitch_e1
        :pswitch_e7
        :pswitch_ed
    .end packed-switch
.end method

.method public final recycle()V
    .registers 5

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 326
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_16

    .line 327
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 333
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_9
    monitor-enter v1

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/4 v2, 0x6

    if-ge v0, v2, :cond_20

    .line 335
    :try_start_e
    aget-object v2, v1, v0

    if-nez v2, :cond_1d

    .line 336
    aput-object p0, v1, v0

    .line 337
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_22

    .line 341
    :goto_15
    return-void

    .line 329
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_16
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 330
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_9

    .line 334
    .restart local v0    # "i":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 340
    :cond_20
    :try_start_20
    monitor-exit v1

    goto :goto_15

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .registers 4
    .param p1, "lastValue"    # Z

    .prologue
    .line 414
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    .line 415
    return-void
.end method

.method public final setDataCapacity(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 404
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    .line 405
    return-void
.end method

.method public final setDataPosition(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 393
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    .line 394
    return-void
.end method

.method public final setDataSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 384
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)V

    .line 385
    return-void
.end method

.method public final unmarshall([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offest"    # I
    .param p3, "length"    # I

    .prologue
    .line 436
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 437
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 722
    if-nez p1, :cond_7

    .line 723
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    :cond_6
    return-void

    .line 726
    :cond_7
    array-length v0, p1

    .line 727
    .local v0, "N":I
    const/4 v1, 0x0

    .line 728
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    :goto_c
    if-ge v1, v0, :cond_6

    .line 730
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public writeArrayMap(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 651
    return-void
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 624
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    :cond_6
    return-void

    .line 627
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 628
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 637
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .registers 5
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1030
    if-eqz p1, :cond_11

    .line 1031
    array-length v0, p1

    .line 1032
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1034
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1037
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    :cond_15
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_7

    .line 1152
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    :cond_6
    return-void

    .line 1155
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1156
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1157
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    :goto_f
    if-ge v1, v0, :cond_6

    .line 1159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeBlob([B)V
    .registers 6
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    if-eqz p1, :cond_a

    array-length v0, p1

    :goto_6
    invoke-static {v2, v3, p1, v1, v0}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    .line 497
    return-void

    :cond_a
    move v0, v1

    .line 496
    goto :goto_6
.end method

.method public final writeBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .prologue
    .line 772
    if-eqz p1, :cond_16

    .line 773
    array-length v0, p1

    .line 774
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 776
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 776
    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    .line 779
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_16
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    :cond_1a
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;

    .prologue
    .line 658
    if-nez p1, :cond_7

    .line 659
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    :goto_6
    return-void

    .line 663
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeByte(B)V
    .registers 2
    .param p1, "val"    # B

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    return-void
.end method

.method public final writeByteArray([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 469
    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 470
    return-void

    :cond_8
    move v0, v1

    .line 469
    goto :goto_4
.end method

.method public final writeByteArray([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 480
    if-nez p1, :cond_7

    .line 481
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    :goto_6
    return-void

    .line 484
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 485
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    goto :goto_6
.end method

.method public final writeCharArray([C)V
    .registers 5
    .param p1, "val"    # [C

    .prologue
    .line 811
    if-eqz p1, :cond_11

    .line 812
    array-length v0, p1

    .line 813
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 815
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 818
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    :cond_15
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 546
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1045
    if-eqz p1, :cond_11

    .line 1046
    array-length v0, p1

    .line 1047
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1049
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1048
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1052
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    :cond_15
    return-void
.end method

.method public final writeDouble(D)V
    .registers 6
    .param p1, "val"    # D

    .prologue
    .line 528
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)V

    .line 529
    return-void
.end method

.method public final writeDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .prologue
    .line 957
    if-eqz p1, :cond_11

    .line 958
    array-length v0, p1

    .line 959
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 961
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 964
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    :cond_15
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1418
    const/4 v0, 0x0

    .line 1419
    .local v0, "code":I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_15

    .line 1420
    const/4 v0, -0x1

    .line 1434
    :cond_6
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1436
    if-nez v0, :cond_3f

    .line 1437
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_39

    .line 1438
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1421
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_15
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_1b

    .line 1422
    const/4 v0, -0x2

    goto :goto_6

    .line 1423
    :cond_1b
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_21

    .line 1424
    const/4 v0, -0x3

    goto :goto_6

    .line 1425
    :cond_21
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_27

    .line 1426
    const/4 v0, -0x4

    goto :goto_6

    .line 1427
    :cond_27
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_2d

    .line 1428
    const/4 v0, -0x5

    goto :goto_6

    .line 1429
    :cond_2d
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_33

    .line 1430
    const/4 v0, -0x6

    goto :goto_6

    .line 1431
    :cond_33
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_6

    .line 1432
    const/4 v0, -0x7

    goto :goto_6

    .line 1440
    :cond_39
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1442
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .prologue
    .line 575
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 576
    return-void
.end method

.method public final writeFloat(F)V
    .registers 4
    .param p1, "val"    # F

    .prologue
    .line 520
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)V

    .line 521
    return-void
.end method

.method public final writeFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .prologue
    .line 920
    if-eqz p1, :cond_11

    .line 921
    array-length v0, p1

    .line 922
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 924
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 927
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    :cond_15
    return-void
.end method

.method public final writeInt(I)V
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 504
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)V

    .line 505
    return-void
.end method

.method public final writeIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .prologue
    .line 847
    if-eqz p1, :cond_11

    .line 848
    array-length v0, p1

    .line 849
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 851
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 854
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    :cond_15
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    .line 457
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .registers 5
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 703
    if-nez p1, :cond_7

    .line 704
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    :cond_6
    return-void

    .line 707
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 708
    .local v0, "N":I
    const/4 v1, 0x0

    .line 709
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    :goto_f
    if-ge v1, v0, :cond_6

    .line 711
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeLong(J)V
    .registers 6
    .param p1, "val"    # J

    .prologue
    .line 512
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)V

    .line 513
    return-void
.end method

.method public final writeLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .prologue
    .line 883
    if-eqz p1, :cond_11

    .line 884
    array-length v0, p1

    .line 885
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 887
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 890
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    :cond_15
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .registers 2
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 599
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 607
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    :cond_6
    return-void

    .line 610
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 611
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 613
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final writeNoException()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1466
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1467
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1469
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1471
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1472
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1473
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1478
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_25
    return-void

    .line 1476
    :cond_26
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1351
    if-nez p1, :cond_7

    .line 1352
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    :goto_6
    return-void

    .line 1355
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1357
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 2113
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_11

    .line 2114
    array-length v0, p1

    .line 2115
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 2117
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2116
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2120
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    :cond_15
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public final writePersistableBundle(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/PersistableBundle;

    .prologue
    .line 671
    if-nez p1, :cond_7

    .line 672
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    :goto_6
    return-void

    .line 676
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .registers 9
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 1373
    if-nez p1, :cond_7

    .line 1374
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1392
    :goto_6
    return-void

    .line 1377
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1380
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1382
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1383
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1384
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1386
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 1387
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2a
    move-exception v1

    .line 1388
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSize(Landroid/util/Size;)V
    .registers 3
    .param p1, "val"    # Landroid/util/Size;

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    return-void
.end method

.method public final writeSizeF(Landroid/util/SizeF;)V
    .registers 3
    .param p1, "val"    # Landroid/util/SizeF;

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 694
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 695
    return-void
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 743
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    :cond_6
    return-void

    .line 746
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 747
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 750
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 757
    if-nez p1, :cond_7

    .line 758
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    :cond_6
    return-void

    .line 761
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 762
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6

    .line 765
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_1f
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 766
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public final writeString(Ljava/lang/String;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    .line 537
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 994
    if-eqz p1, :cond_11

    .line 995
    array-length v0, p1

    .line 996
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 998
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1001
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    :cond_15
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 1127
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    :cond_6
    return-void

    .line 1130
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1131
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1132
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    :goto_f
    if-ge v1, v0, :cond_6

    .line 1134
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "val"    # Landroid/os/IBinder;

    .prologue
    .line 553
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    .line 554
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;

    .prologue
    .line 561
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 562
    return-void

    .line 561
    :cond_7
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 7
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1c

    .line 1185
    array-length v0, p1

    .line 1186
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1188
    aget-object v2, p1, v1

    .line 1189
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_17

    .line 1190
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1187
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1193
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 1197
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1c
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    :cond_20
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 1095
    if-nez p1, :cond_8

    .line 1096
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    :cond_7
    return-void

    .line 1099
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1100
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1101
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    :goto_10
    if-ge v1, v0, :cond_7

    .line 1103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1104
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_24

    .line 1105
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1110
    :goto_21
    add-int/lit8 v1, v1, 0x1

    .line 1111
    goto :goto_10

    .line 1108
    :cond_24
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1245
    if-nez p1, :cond_9

    .line 1246
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    .end local p1    # "v":Ljava/lang/Object;
    :goto_8
    return-void

    .line 1247
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 1248
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 1250
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 1251
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1253
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_27
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_35

    .line 1254
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    .line 1256
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_35
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_43

    .line 1258
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_8

    .line 1260
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_43
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_51

    .line 1261
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_8

    .line 1263
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_51
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_63

    .line 1264
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1266
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_63
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_75

    .line 1267
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 1269
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_75
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_87

    .line 1270
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 1272
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_87
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_9b

    .line 1273
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_8

    .line 1275
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9b
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_b3

    .line 1276
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b1

    :goto_ac
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_b1
    move v1, v2

    goto :goto_ac

    .line 1278
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b3
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c3

    .line 1280
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1282
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c3
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_d3

    .line 1283
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_8

    .line 1285
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d3
    instance-of v1, p1, Landroid/util/SparseArray;

    if-eqz v1, :cond_e3

    .line 1286
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_8

    .line 1288
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e3
    instance-of v1, p1, [Z

    if-eqz v1, :cond_f5

    .line 1289
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_8

    .line 1291
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f5
    instance-of v1, p1, [B

    if-eqz v1, :cond_107

    .line 1292
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    .line 1294
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_107
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_119

    .line 1295
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1297
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_119
    instance-of v1, p1, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_12b

    .line 1299
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1301
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12b
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_13b

    .line 1302
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    check-cast p1, Landroid/os/IBinder;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1304
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13b
    instance-of v1, p1, [Landroid/os/Parcelable;

    if-eqz v1, :cond_14d

    .line 1305
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 1307
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14d
    instance-of v1, p1, [I

    if-eqz v1, :cond_15f

    .line 1308
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    .line 1310
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15f
    instance-of v1, p1, [J

    if-eqz v1, :cond_171

    .line 1311
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_8

    .line 1313
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_171
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_185

    .line 1314
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 1316
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_185
    instance-of v1, p1, Landroid/os/PersistableBundle;

    if-eqz v1, :cond_195

    .line 1317
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    check-cast p1, Landroid/os/PersistableBundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    goto/16 :goto_8

    .line 1319
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_195
    instance-of v1, p1, Landroid/util/Size;

    if-eqz v1, :cond_1a5

    .line 1320
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    check-cast p1, Landroid/util/Size;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    goto/16 :goto_8

    .line 1322
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1a5
    instance-of v1, p1, Landroid/util/SizeF;

    if-eqz v1, :cond_1b5

    .line 1323
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    check-cast p1, Landroid/util/SizeF;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    goto/16 :goto_8

    .line 1326
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1b5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1327
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1d5

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1d5

    .line 1330
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1332
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1d5
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_1e5

    .line 1334
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_8

    .line 1337
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1e5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel: unable to marshal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
