.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;
.super Ljava/lang/Object;
.source "MarshalQueryableParcelable.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FIELD_CREATOR:Ljava/lang/String; = "CREATOR"

.field private static final TAG:Ljava/lang/String; = "MarshalParcelable"

.field private static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "MarshalParcelable"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;->VERBOSE:Z

    return v0
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .registers 5
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
