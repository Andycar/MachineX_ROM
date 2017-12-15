.class public Landroid/media/SRTRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SRTRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mRender:Z

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEventHandler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    .line 34
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    .line 35
    iput-object p2, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    .line 36
    return-void

    .line 34
    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_11

    .line 53
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 56
    :cond_11
    iget-boolean v0, p0, Landroid/media/SRTRenderer;->mRender:Z

    if-eqz v0, :cond_1d

    .line 57
    new-instance v0, Landroid/media/SRTTrack;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 59
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Landroid/media/SRTTrack;

    iget-object v1, p0, Landroid/media/SRTRenderer;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Landroid/media/SRTTrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    goto :goto_1c
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 41
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 47
    :cond_1a
    :goto_1a
    return v1

    .line 45
    :cond_1b
    iget-boolean v3, p0, Landroid/media/SRTRenderer;->mRender:Z

    const-string v2, "is-timed-text"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2a

    move v2, v0

    :goto_26
    if-ne v3, v2, :cond_2c

    :goto_28
    move v1, v0

    goto :goto_1a

    :cond_2a
    move v2, v1

    goto :goto_26

    :cond_2c
    move v0, v1

    goto :goto_28
.end method
