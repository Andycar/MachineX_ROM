.class Landroid/graphics/drawable/VectorDrawable$VPath;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/util/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1254
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .registers 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1257
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 1258
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 1259
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1260
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1278
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/util/PathParser$PathDataNode;
    .registers 2

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .registers 2

    .prologue
    .line 1281
    const/4 v0, 0x0

    return v0
.end method

.method public setPathData([Landroid/util/PathParser$PathDataNode;)V
    .registers 3
    .param p1, "nodes"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 1292
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1294
    invoke-static {p1}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    .line 1298
    :goto_e
    return-void

    .line 1296
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser;->updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V

    goto :goto_e
.end method

.method public toPath(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1263
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1264
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    if-eqz v0, :cond_c

    .line 1265
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1267
    :cond_c
    return-void
.end method
