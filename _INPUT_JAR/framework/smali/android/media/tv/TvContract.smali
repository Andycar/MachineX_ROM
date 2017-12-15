.class public final Landroid/media/tv/TvContract;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$WatchedPrograms;,
        Landroid/media/tv/TvContract$Programs;,
        Landroid/media/tv/TvContract$Channels;,
        Landroid/media/tv/TvContract$BaseTvColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.media.tv"

.field public static final PARAM_BROWSABLE_ONLY:Ljava/lang/String; = "browsable_only"

.field public static final PARAM_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAM_END_TIME:Ljava/lang/String; = "end_time"

.field public static final PARAM_INPUT:Ljava/lang/String; = "input"

.field public static final PARAM_START_TIME:Ljava/lang/String; = "start_time"

.field private static final PATH_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PATH_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final PATH_PROGRAM:Ljava/lang/String; = "program"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildChannelLogoUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "channelId"    # J

    .prologue
    .line 138
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 147
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1f
    const-string v0, "logo"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildChannelUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "channelId"    # J

    .prologue
    .line 118
    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "inputId"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.media.tv"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "passthrough"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "inputId"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 6
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "browsableOnly"    # Z

    .prologue
    .line 198
    if-nez p1, :cond_7

    .line 199
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 204
    :goto_6
    return-object v0

    .line 201
    :cond_7
    invoke-static {p1}, Landroid/media/tv/TvContract$Programs$Genres;->isCanonical(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a canonical genre: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2c
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "canonical_genre"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_6
.end method

.method public static final buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 5
    .param p0, "inputId"    # Ljava/lang/String;
    .param p1, "browsableOnly"    # Z

    .prologue
    .line 175
    sget-object v1, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 176
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p0, :cond_d

    .line 177
    const-string v1, "input"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    :cond_d
    const-string v1, "browsable_only"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final buildProgramUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "programId"    # J

    .prologue
    .line 214
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildProgramsUriForChannel(J)Landroid/net/Uri;
    .registers 6
    .param p0, "channelId"    # J

    .prologue
    .line 223
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildProgramsUriForChannel(JJJ)Landroid/net/Uri;
    .registers 10
    .param p0, "channelId"    # J
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 251
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v0

    .line 252
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "end_time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p0, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 233
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1f
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;
    .registers 12
    .param p0, "channelUri"    # Landroid/net/Uri;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 268
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1f
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildWatchedProgramUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "watchedProgramId"    # J

    .prologue
    .line 281
    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isChannelUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 316
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "passthrough"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static final isChannelUriForTunerInput(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 307
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "channel"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final isProgramUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "program"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static final isTvUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 285
    if-eqz p0, :cond_1c

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "android.media.tv"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static final isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 291
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method
