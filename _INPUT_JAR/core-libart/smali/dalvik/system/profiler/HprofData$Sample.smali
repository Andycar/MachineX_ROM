.class public final Ldalvik/system/profiler/HprofData$Sample;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sample"
.end annotation


# instance fields
.field public final count:I

.field public final stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData$StackTrace;I)V
    .registers 6
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "count"    # I

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    if-nez p1, :cond_d

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stackTrace == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_d
    if-gez p2, :cond_28

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count < 0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_28
    iput-object p1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    .line 215
    iput p2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/profiler/HprofData$StackTrace;ILdalvik/system/profiler/HprofData$1;)V
    .registers 4
    .param p1, "x0"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ldalvik/system/profiler/HprofData$1;

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ldalvik/system/profiler/HprofData$Sample;-><init>(Ldalvik/system/profiler/HprofData$StackTrace;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 226
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$Sample;

    if-nez v2, :cond_6

    .line 230
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 229
    check-cast v0, Ldalvik/system/profiler/HprofData$Sample;

    .line 230
    .local v0, "s":Ldalvik/system/profiler/HprofData$Sample;
    iget v2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-virtual {v2, v3}, Ldalvik/system/profiler/HprofData$StackTrace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 219
    const/16 v0, 0x11

    .line 220
    .local v0, "result":I
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$StackTrace;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 221
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    add-int v0, v1, v2

    .line 222
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample[count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
