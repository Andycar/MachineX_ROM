.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableHighSpeedVideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerHighSpeedVideoConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 4
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    check-cast p1, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->marshal(Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 57
    .local v3, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 58
    .local v2, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 59
    .local v1, "fpsMin":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 61
    .local v0, "fpsMax":I
    new-instance v4, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration$MarshalerHighSpeedVideoConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object v0

    return-object v0
.end method
