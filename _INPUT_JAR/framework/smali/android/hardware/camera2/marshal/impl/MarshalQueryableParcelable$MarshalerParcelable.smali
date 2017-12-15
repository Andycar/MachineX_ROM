.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableParcelable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerParcelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 8
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 54
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    .line 57
    :try_start_b
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    const-string v3, "CREATOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_12} :catch_1d

    move-result-object v0

    .line 64
    .local v0, "creatorField":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable$Creator;

    iput-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_1c} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_2b

    .line 72
    return-void

    .line 58
    .end local v0    # "creatorField":Ljava/lang/reflect/Field;
    :catch_1d
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 65
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creatorField":Ljava/lang/reflect/Field;
    :catch_24
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 68
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2b
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/os/Parcelable;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 168
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_5
    invoke-interface {p1, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    array-length v0, v2

    .line 171
    .local v0, "length":I
    # getter for: Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->access$000()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 172
    const-string v2, "MarshalParcelable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMarshalSize, length when parceling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    .line 178
    :cond_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .end local v0    # "length":I
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->calculateMarshalSize(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public getNativeSize()I
    .registers 2

    .prologue
    .line 161
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    # getter for: Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 77
    const-string v2, "MarshalParcelable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "marshal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_24
    invoke-interface {p1, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 87
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcelable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must not have file descriptors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_4c

    .line 94
    :catchall_4c
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 91
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4c

    move-result-object v1

    .line 94
    .local v1, "parcelContents":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 97
    array-length v2, v1

    if-nez v2, :cond_74

    .line 98
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No data marshaled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 101
    :cond_74
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 44
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    # getter for: Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->access$000()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 107
    const-string v5, "MarshalParcelable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmarshal, buffer remaining "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 129
    .local v2, "parcel":Landroid/os/Parcel;
    :try_start_2a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 131
    .local v1, "maxLength":I
    new-array v3, v1, [B

    .line 132
    .local v3, "remaining":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 135
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 138
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 140
    .local v0, "actualLength":I
    if-nez v0, :cond_67

    .line 141
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No data marshaled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_62
    .catchall {:try_start_2a .. :try_end_62} :catchall_62

    .line 155
    .end local v0    # "actualLength":I
    .end local v1    # "maxLength":I
    .end local v3    # "remaining":[B
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    :catchall_62
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 145
    .restart local v0    # "actualLength":I
    .restart local v1    # "maxLength":I
    .restart local v3    # "remaining":[B
    .restart local v4    # "value":Landroid/os/Parcelable;, "TT;"
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    # getter for: Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->access$000()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 149
    const-string v5, "MarshalParcelable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmarshal, parcel length was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v5, "MarshalParcelable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmarshal, value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_aa
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;
    :try_end_b2
    .catchall {:try_start_67 .. :try_end_b2} :catchall_62

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v5
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 44
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
