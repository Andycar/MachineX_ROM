.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 235
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .registers 10
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 243
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 245
    if-eqz p1, :cond_51

    .line 246
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3e

    .line 247
    iget-object v0, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 248
    .local v0, "t":Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 249
    :cond_36
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v0    # "t":Landroid/renderscript/Type;
    :cond_3e
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 257
    :goto_50
    return-void

    .line 255
    :cond_51
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    goto :goto_50
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .registers 11
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 90
    iget-object v4, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$FieldID;

    .line 91
    .local v1, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 102
    .end local v1    # "f":Landroid/renderscript/Script$FieldID;
    .local v0, "f":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 95
    .end local v0    # "f":Ljava/lang/Object;
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    :cond_c
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v2

    .line 96
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 97
    new-instance v4, Landroid/renderscript/RSDriverException;

    const-string v5, "Failed to create FieldID"

    invoke-direct {v4, v5}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_26
    new-instance v1, Landroid/renderscript/Script$FieldID;

    .end local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 101
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v4, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 102
    .restart local v0    # "f":Ljava/lang/Object;
    goto :goto_b
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .registers 13
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    .prologue
    .line 52
    iget-object v4, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$KernelID;

    .line 53
    .local v1, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 64
    .end local v1    # "k":Landroid/renderscript/Script$KernelID;
    .local v0, "k":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 57
    .end local v0    # "k":Ljava/lang/Object;
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    :cond_c
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v2

    .line 58
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 59
    new-instance v4, Landroid/renderscript/RSDriverException;

    const-string v5, "Failed to create KernelID"

    invoke-direct {v4, v5}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_26
    new-instance v1, Landroid/renderscript/Script$KernelID;

    .end local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 63
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v4, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 64
    .restart local v0    # "k":Ljava/lang/Object;
    goto :goto_b
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 14
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 132
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 133
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 134
    if-nez p2, :cond_1b

    if-nez p3, :cond_1b

    .line 135
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1b
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "in_id":J
    if-eqz p2, :cond_25

    .line 140
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .line 142
    :cond_25
    const-wide/16 v6, 0x0

    .line 143
    .local v6, "out_id":J
    if-eqz p3, :cond_2f

    .line 144
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    .line 146
    :cond_2f
    const/4 v8, 0x0

    .line 147
    .local v8, "params":[B
    if-eqz p4, :cond_36

    .line 148
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    .line 150
    :cond_36
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->nScriptForEach(JIJJ[B)V

    .line 151
    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 23
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 161
    if-nez p2, :cond_25

    if-nez p3, :cond_25

    .line 162
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "At least one of ain or aout is required to be non-null."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_25
    if-nez p5, :cond_2b

    .line 167
    invoke-virtual/range {p0 .. p4}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 183
    :goto_2a
    return-void

    .line 170
    :cond_2b
    const-wide/16 v6, 0x0

    .line 171
    .local v6, "in_id":J
    if-eqz p2, :cond_39

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    .line 174
    :cond_39
    const-wide/16 v8, 0x0

    .line 175
    .local v8, "out_id":J
    if-eqz p3, :cond_47

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 178
    :cond_47
    const/4 v10, 0x0

    .line 179
    .local v10, "params":[B
    if-eqz p4, :cond_4e

    .line 180
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v10

    .line 182
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v11

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v12

    # getter for: Landroid/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v13

    # getter for: Landroid/renderscript/Script$LaunchOptions;->yend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v14

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v15

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v16

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v16}, Landroid/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIII)V

    goto :goto_2a
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 191
    new-instance v5, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v5}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 192
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 27
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 202
    move-object/from16 v17, p2

    .local v17, "arr$":[Landroid/renderscript/Allocation;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_10
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_22

    aget-object v2, v17, v18

    .line 203
    .local v2, "ain":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 202
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 206
    .end local v2    # "ain":Landroid/renderscript/Allocation;
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 207
    if-nez p2, :cond_37

    if-nez p3, :cond_37

    .line 208
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of ain or aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_37
    if-nez p5, :cond_3d

    .line 213
    invoke-virtual/range {p0 .. p4}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 231
    :goto_3c
    return-void

    .line 217
    :cond_3d
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v7, v3, [J

    .line 218
    .local v7, "in_ids":[J
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_44
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_5a

    .line 219
    aget-object v3, p2, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v7, v19

    .line 218
    add-int/lit8 v19, v19, 0x1

    goto :goto_44

    .line 222
    :cond_5a
    const-wide/16 v8, 0x0

    .line 223
    .local v8, "out_id":J
    if-eqz p3, :cond_68

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 226
    :cond_68
    const/4 v10, 0x0

    .line 227
    .local v10, "params":[B
    if-eqz p4, :cond_6f

    .line 228
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v10

    .line 230
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v11

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v12

    # getter for: Landroid/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v13

    # getter for: Landroid/renderscript/Script$LaunchOptions;->yend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v14

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v15

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v16

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nScriptForEachMultiClipped(JI[JJ[BIIIIII)V

    goto :goto_3c
.end method

.method public getVarB(I)Z
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 313
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getVarD(I)D
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 278
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 267
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 289
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 301
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 347
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    .line 348
    return-void
.end method

.method protected invoke(I)V
    .registers 6
    .param p1, "slot"    # I

    .prologue
    .line 111
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 112
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 119
    if-eqz p2, :cond_12

    .line 120
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    .line 124
    :goto_11
    return-void

    .line 122
    :cond_12
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    goto :goto_11
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 7
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 353
    :try_start_5
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_16} :catch_17

    .line 357
    return-void

    .line 354
    :catch_17
    move-exception v0

    .line 355
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 275
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    .line 276
    return-void
.end method

.method public setVar(IF)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 264
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    .line 265
    return-void
.end method

.method public setVar(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 286
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 287
    return-void
.end method

.method public setVar(IJ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 298
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    .line 299
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 321
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 322
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 323
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    if-nez p2, :cond_1b

    const-wide/16 v4, 0x0

    :goto_16
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    .line 324
    return-void

    .line 323
    :cond_1b
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_16
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 331
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    .line 332
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 339
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    .line 340
    return-void
.end method

.method public setVar(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 310
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 311
    return-void

    .line 310
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
