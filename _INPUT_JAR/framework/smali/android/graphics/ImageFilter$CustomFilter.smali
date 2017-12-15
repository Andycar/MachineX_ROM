.class public Landroid/graphics/ImageFilter$CustomFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilter"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "vcode"    # Ljava/lang/String;
    .param p2, "fcode"    # Ljava/lang/String;

    .prologue
    .line 1164
    const/16 v0, 0xee

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 1165
    invoke-virtual {p0, p1}, Landroid/graphics/ImageFilter$CustomFilter;->setVertexShader(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0, p2}, Landroid/graphics/ImageFilter$CustomFilter;->setFragmentShader(Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ImageFilter$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 1161
    invoke-direct {p0, p1, p2}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1161
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1371
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/ImageFilter;->setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 1372
    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F

    .prologue
    const/4 v2, 0x1

    .line 1192
    new-array v0, v2, [F

    .line 1193
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1194
    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 1195
    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I

    .prologue
    const/4 v2, 0x1

    .line 1274
    new-array v0, v2, [I

    .line 1275
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1276
    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 1277
    return-void
.end method

.method public setUniform2f(Ljava/lang/String;FF)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1207
    new-array v0, v3, [F

    .line 1208
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1209
    aput p3, v0, v2

    .line 1210
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 1211
    return-void
.end method

.method public setUniform2i(Ljava/lang/String;II)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1289
    new-array v0, v3, [I

    .line 1290
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1291
    aput p3, v0, v2

    .line 1292
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 1293
    return-void
.end method

.method public setUniform3f(Ljava/lang/String;FFF)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1224
    new-array v0, v3, [F

    .line 1225
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1226
    aput p3, v0, v2

    .line 1227
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1228
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 1229
    return-void
.end method

.method public setUniform3i(Ljava/lang/String;III)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1306
    new-array v0, v3, [I

    .line 1307
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1308
    aput p3, v0, v2

    .line 1309
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1310
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 1311
    return-void
.end method

.method public setUniform4f(Ljava/lang/String;FFFF)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F
    .param p5, "value3"    # F

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1243
    new-array v0, v3, [F

    .line 1244
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1245
    aput p3, v0, v2

    .line 1246
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1247
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 1248
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 1249
    return-void
.end method

.method public setUniform4i(Ljava/lang/String;IIII)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I
    .param p5, "value3"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1325
    new-array v0, v3, [I

    .line 1326
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1327
    aput p3, v0, v2

    .line 1328
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1329
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 1330
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 1331
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;II[F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "value"    # [F

    .prologue
    .line 1358
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    .line 1359
    return-void
.end method

.method public setUniformfv(Ljava/lang/String;II[F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [F

    .prologue
    .line 1262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 1263
    return-void
.end method

.method public setUniformiv(Ljava/lang/String;II[I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [I

    .prologue
    .line 1344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 1345
    return-void
.end method

.method public setUpdateMargin(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUpdateMargin(IIII)V

    .line 1181
    return-void
.end method
