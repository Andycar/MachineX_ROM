.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableBlackLevelPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerBlackLevelPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/BlackLevelPattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/BlackLevelPattern;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/BlackLevelPattern;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "value"    # Landroid/hardware/camera2/params/BlackLevelPattern;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x2

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_14

    .line 43
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v3, :cond_11

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    .end local v1    # "j":I
    :cond_14
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    check-cast p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;->marshal(Landroid/hardware/camera2/params/BlackLevelPattern;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/BlackLevelPattern;
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x4

    .line 51
    new-array v0, v3, [I

    .line 52
    .local v0, "channelOffsets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_f

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 55
    :cond_f
    new-instance v2, Landroid/hardware/camera2/params/BlackLevelPattern;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/params/BlackLevelPattern;-><init>([I)V

    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object v0

    return-object v0
.end method
