.class Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;
.super Landroid/hardware/camera2/utils/TypeReference;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecializedBaseTypeReference"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/utils/TypeReference;-><init>(Ljava/lang/reflect/Type;Landroid/hardware/camera2/utils/TypeReference$1;)V

    .line 106
    return-void
.end method
