.class public Landroid/filterpacks/base/FrameBranch;
.super Landroid/filterfw/core/Filter;
.source "FrameBranch.java"


# instance fields
.field private mNumberOfOutputs:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "outputs"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    .line 36
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 48
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 53
    const-string v2, "in"

    invoke-virtual {p0, v2}, Landroid/filterpacks/base/FrameBranch;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 56
    .local v1, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v2, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    if-ge v0, v2, :cond_25

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/base/FrameBranch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 59
    :cond_25
    return-void
.end method

.method public setupPorts()V
    .registers 4

    .prologue
    .line 40
    const-string v1, "in"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameBranch;->addInputPort(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    if-ge v0, v1, :cond_26

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/FrameBranch;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 44
    :cond_26
    return-void
.end method
