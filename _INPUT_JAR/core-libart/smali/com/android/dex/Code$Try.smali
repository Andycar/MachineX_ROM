.class public Lcom/android/dex/Code$Try;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Try"
.end annotation


# instance fields
.field final catchHandlerIndex:I

.field final instructionCount:I

.field final startAddress:I


# direct methods
.method constructor <init>(III)V
    .registers 4
    .param p1, "startAddress"    # I
    .param p2, "instructionCount"    # I
    .param p3, "catchHandlerIndex"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/dex/Code$Try;->startAddress:I

    .line 74
    iput p2, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    .line 75
    iput p3, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    .line 76
    return-void
.end method


# virtual methods
.method public getCatchHandlerIndex()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    return v0
.end method

.method public getInstructionCount()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    return v0
.end method

.method public getStartAddress()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/dex/Code$Try;->startAddress:I

    return v0
.end method
