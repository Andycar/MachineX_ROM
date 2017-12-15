.class public final Landroid/media/tv/TvStreamConfig$Builder;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mGeneration:Ljava/lang/Integer;

.field private mMaxHeight:Ljava/lang/Integer;

.field private mMaxWidth:Ljava/lang/Integer;

.field private mStreamId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvStreamConfig;
    .registers 3

    .prologue
    .line 155
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    if-nez v1, :cond_1a

    .line 157
    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 160
    :cond_1a
    new-instance v0, Landroid/media/tv/TvStreamConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvStreamConfig;-><init>(Landroid/media/tv/TvStreamConfig$1;)V

    .line 161
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvStreamConfig;->mStreamId:I
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$102(Landroid/media/tv/TvStreamConfig;I)I

    .line 162
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvStreamConfig;->mType:I
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$202(Landroid/media/tv/TvStreamConfig;I)I

    .line 163
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvStreamConfig;->mMaxWidth:I
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$302(Landroid/media/tv/TvStreamConfig;I)I

    .line 164
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvStreamConfig;->mMaxHeight:I
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$402(Landroid/media/tv/TvStreamConfig;I)I

    .line 165
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvStreamConfig;->mGeneration:I
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$502(Landroid/media/tv/TvStreamConfig;I)I

    .line 166
    return-object v0
.end method

.method public generation(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "generation"    # I

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "maxHeight"    # I

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    .line 146
    return-object p0
.end method

.method public maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "maxWidth"    # I

    .prologue
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    .line 141
    return-object p0
.end method

.method public streamId(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "streamId"    # I

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    .line 131
    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvStreamConfig$Builder;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method
