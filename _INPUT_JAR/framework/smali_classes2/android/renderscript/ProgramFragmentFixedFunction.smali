.class public Landroid/renderscript/ProgramFragmentFixedFunction;
.super Landroid/renderscript/ProgramFragment;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$1;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder;,
        Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ProgramFragment;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 33
    return-void
.end method
