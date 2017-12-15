.class Landroid/graphics/Picture$RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingCanvas"
.end annotation


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;J)V
    .registers 4
    .param p1, "pict"    # Landroid/graphics/Picture;
    .param p2, "nativeCanvas"    # J

    .prologue
    .line 198
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 199
    iput-object p1, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    .line 200
    return-void
.end method


# virtual methods
.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 4
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 209
    iget-object v0, p0, Landroid/graphics/Picture$RecordingCanvas;->mPicture:Landroid/graphics/Picture;

    if-ne v0, p1, :cond_c

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot draw a picture into its recording canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_c
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 213
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot call setBitmap on a picture canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
