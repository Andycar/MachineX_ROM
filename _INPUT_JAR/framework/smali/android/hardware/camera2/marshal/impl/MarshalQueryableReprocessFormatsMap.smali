.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
.super Ljava/lang/Object;
.source "MarshalQueryableReprocessFormatsMap.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<",
        "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ReprocessFormatsMap;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .registers 6
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ReprocessFormatsMap;>;"
    const/4 v0, 0x1

    .line 129
    if-ne p2, v0, :cond_10

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
