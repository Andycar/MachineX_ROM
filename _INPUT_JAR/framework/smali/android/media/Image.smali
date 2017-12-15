.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 150
    .end local p1    # "cropRect":Landroid/graphics/Rect;
    .local v0, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 151
    iput-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    .line 152
    return-void
.end method
