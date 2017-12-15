.class public final Landroid/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# instance fields
.field private mElement:Landroid/renderscript/Element;

.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 33
    iput-object p4, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    .line 34
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
    .registers 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 47
    const/16 v2, 0x8

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 49
    .local v0, "id":J
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 50
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Element must be compatible with uchar4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1c
    new-instance v2, Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v2
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 88
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 99
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 100
    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setLUT(Landroid/renderscript/Allocation;)V
    .registers 5
    .param p1, "lut"    # Landroid/renderscript/Allocation;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 66
    .local v0, "t":Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-nez v1, :cond_12

    .line 67
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT must be 3d."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_12
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 71
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT element type must match."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_26
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    .line 75
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 76
    return-void
.end method
