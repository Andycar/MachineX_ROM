.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$IO;
    }
.end annotation


# instance fields
.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 93
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    .line 142
    return-void
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 106
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 107
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 108
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    .line 109
    return-void

    .line 105
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2f
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 126
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 127
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 128
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    .line 129
    return-void

    .line 125
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2f
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
