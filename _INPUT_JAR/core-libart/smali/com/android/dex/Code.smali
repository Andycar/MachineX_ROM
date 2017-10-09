.class public final Lcom/android/dex/Code;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/Code$CatchHandler;,
        Lcom/android/dex/Code$Try;
    }
.end annotation


# instance fields
.field private final catchHandlers:[Lcom/android/dex/Code$CatchHandler;

.field private final debugInfoOffset:I

.field private final insSize:I

.field private final instructions:[S

.field private final outsSize:I

.field private final registersSize:I

.field private final tries:[Lcom/android/dex/Code$Try;


# direct methods
.method public constructor <init>(IIII[S[Lcom/android/dex/Code$Try;[Lcom/android/dex/Code$CatchHandler;)V
    .registers 8
    .param p1, "registersSize"    # I
    .param p2, "insSize"    # I
    .param p3, "outsSize"    # I
    .param p4, "debugInfoOffset"    # I
    .param p5, "instructions"    # [S
    .param p6, "tries"    # [Lcom/android/dex/Code$Try;
    .param p7, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/dex/Code;->registersSize:I

    .line 31
    iput p2, p0, Lcom/android/dex/Code;->insSize:I

    .line 32
    iput p3, p0, Lcom/android/dex/Code;->outsSize:I

    .line 33
    iput p4, p0, Lcom/android/dex/Code;->debugInfoOffset:I

    .line 34
    iput-object p5, p0, Lcom/android/dex/Code;->instructions:[S

    .line 35
    iput-object p6, p0, Lcom/android/dex/Code;->tries:[Lcom/android/dex/Code$Try;

    .line 36
    iput-object p7, p0, Lcom/android/dex/Code;->catchHandlers:[Lcom/android/dex/Code$CatchHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public getCatchHandlers()[Lcom/android/dex/Code$CatchHandler;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dex/Code;->catchHandlers:[Lcom/android/dex/Code$CatchHandler;

    return-object v0
.end method

.method public getDebugInfoOffset()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/dex/Code;->debugInfoOffset:I

    return v0
.end method

.method public getInsSize()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/dex/Code;->insSize:I

    return v0
.end method

.method public getInstructions()[S
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/dex/Code;->instructions:[S

    return-object v0
.end method

.method public getOutsSize()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/dex/Code;->outsSize:I

    return v0
.end method

.method public getRegistersSize()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/dex/Code;->registersSize:I

    return v0
.end method

.method public getTries()[Lcom/android/dex/Code$Try;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/dex/Code;->tries:[Lcom/android/dex/Code$Try;

    return-object v0
.end method
