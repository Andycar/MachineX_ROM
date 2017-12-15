.class public Landroid/renderscript/ScriptIntrinsicBlend;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlend.java"


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 26
    return-void
.end method

.method private blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 45
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Input is not of expected format."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_18
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlend;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 48
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is not of expected format."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_30
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 51
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;
    .registers 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 38
    const/4 v2, 0x7

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 39
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlend;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlend;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method


# virtual methods
.method public forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 547
    return-void
.end method

.method public forEachAdd(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 557
    const/16 v0, 0x22

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 558
    return-void
.end method

.method public forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 61
    return-void
.end method

.method public forEachClear(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 72
    return-void
.end method

.method public forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 124
    return-void
.end method

.method public forEachDst(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 137
    return-void
.end method

.method public forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 369
    return-void
.end method

.method public forEachDstAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 380
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 381
    return-void
.end method

.method public forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 246
    return-void
.end method

.method public forEachDstIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 256
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 257
    return-void
.end method

.method public forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 306
    return-void
.end method

.method public forEachDstOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 316
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 317
    return-void
.end method

.method public forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 186
    return-void
.end method

.method public forEachDstOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 196
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 197
    return-void
.end method

.method public forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 440
    return-void
.end method

.method public forEachMultiply(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 450
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 451
    return-void
.end method

.method public forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 92
    return-void
.end method

.method public forEachSrc(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 103
    return-void
.end method

.method public forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 337
    return-void
.end method

.method public forEachSrcAtop(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 348
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 349
    return-void
.end method

.method public forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 216
    return-void
.end method

.method public forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 226
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 227
    return-void
.end method

.method public forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 276
    return-void
.end method

.method public forEachSrcOut(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 286
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 287
    return-void
.end method

.method public forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 156
    return-void
.end method

.method public forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 166
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 167
    return-void
.end method

.method public forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 577
    return-void
.end method

.method public forEachSubtract(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 588
    return-void
.end method

.method public forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 400
    return-void
.end method

.method public forEachXor(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 410
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 411
    return-void
.end method

.method public getKernelIDAdd()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 566
    const/16 v0, 0x22

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDClear()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDst()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstAtop()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 389
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstIn()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOut()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 325
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOver()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDMultiply()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 459
    const/16 v0, 0xe

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrc()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 357
    const/16 v0, 0x9

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcIn()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 235
    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOut()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 295
    const/4 v0, 0x7

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOver()Landroid/renderscript/Script$KernelID;
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 175
    invoke-virtual {p0, v0, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSubtract()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 596
    const/16 v0, 0x23

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDXor()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 419
    const/16 v0, 0xb

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method
