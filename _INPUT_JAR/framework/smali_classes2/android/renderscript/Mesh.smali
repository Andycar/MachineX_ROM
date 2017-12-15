.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .registers 3
    .param p1, "slot"    # I

    .prologue
    .line 137
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .registers 3
    .param p1, "slot"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_5
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .registers 3
    .param p1, "slot"    # I

    .prologue
    .line 114
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_6

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_5
.end method

.method updateFromNative()V
    .registers 16

    .prologue
    .line 151
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 152
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    move-result v13

    .line 153
    .local v13, "vtxCount":I
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    move-result v6

    .line 155
    .local v6, "idxCount":I
    new-array v14, v13, [J

    .line 156
    .local v14, "vtxIDs":[J
    new-array v4, v6, [J

    .line 157
    .local v4, "idxIDs":[J
    new-array v5, v6, [I

    .line 159
    .local v5, "primitives":[I
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v14, v13}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    .line 160
    iget-object v1, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    .line 162
    new-array v1, v13, [Landroid/renderscript/Allocation;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 163
    new-array v1, v6, [Landroid/renderscript/Allocation;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 164
    new-array v1, v6, [Landroid/renderscript/Mesh$Primitive;

    iput-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    if-ge v0, v13, :cond_67

    .line 167
    aget-wide v2, v14, v0

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_64

    .line 168
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget-wide v8, v14, v0

    iget-object v10, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v1, v0

    .line 169
    iget-object v1, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 166
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 173
    :cond_67
    const/4 v0, 0x0

    :goto_68
    if-ge v0, v6, :cond_97

    .line 174
    aget-wide v2, v4, v0

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_88

    .line 175
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget-wide v8, v4, v0

    iget-object v10, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v1, v0

    .line 176
    iget-object v1, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 178
    :cond_88
    iget-object v1, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v2

    aget v3, v5, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 180
    :cond_97
    return-void
.end method
