.class final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatchLogHandler"
.end annotation


# static fields
.field private static final MSG_LOG_WATCH_END:I = 0x2

.field private static final MSG_LOG_WATCH_START:I = 0x1


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2148
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2149
    return-void
.end method

.method private encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p1, "tuneParams"    # Landroid/os/Bundle;

    .prologue
    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2202
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2203
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2204
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2206
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2207
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_d

    .line 2210
    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2214
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2217
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 2221
    const/16 v1, 0x25

    .line 2222
    .local v1, "ESCAPE_CHARACTER":C
    const-string v0, "%=,"

    .line 2223
    .local v0, "ENCODING_TARGET_CHARACTERS":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2224
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "arr$":[C
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_f
    if-ge v5, v6, :cond_26

    aget-char v4, v2, v5

    .line 2225
    .local v4, "ch":C
    const-string v7, "%=,"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_20

    .line 2226
    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2228
    :cond_20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2224
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2230
    .end local v4    # "ch":C
    :cond_26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2153
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_b4

    .line 2194
    const-string v7, "TvInputManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :goto_1f
    return-void

    .line 2155
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2156
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2157
    .local v1, "packageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2158
    .local v10, "watchStartTime":J
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2159
    .local v2, "channelId":J
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2160
    .local v5, "tuneParams":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 2162
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2163
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const-string/jumbo v7, "watch_start_time_utc_millis"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2166
    const-string v7, "channel_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2167
    if-eqz v5, :cond_6a

    .line 2168
    const-string/jumbo v7, "tune_params"

    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_6a
    const-string/jumbo v7, "session_token"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2175
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_1f

    .line 2179
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "channelId":J
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "tuneParams":Landroid/os/Bundle;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v10    # "watchStartTime":J
    :pswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2180
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 2181
    .restart local v4    # "sessionToken":Landroid/os/IBinder;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2183
    .local v8, "watchEndTime":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2184
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "watch_end_time_utc_millis"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2186
    const-string/jumbo v7, "session_token"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2190
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_1f

    .line 2153
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_20
        :pswitch_7f
    .end packed-switch
.end method
