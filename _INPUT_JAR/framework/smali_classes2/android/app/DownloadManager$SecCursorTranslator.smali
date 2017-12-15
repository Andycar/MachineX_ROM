.class Landroid/app/DownloadManager$SecCursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecCursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2034
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2039
    iput-object p2, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 2040
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 2265
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_12

    .line 2268
    :cond_10
    int-to-long v0, p1

    .line 2287
    :goto_11
    return-wide v0

    .line 2271
    :cond_12
    sparse-switch p1, :sswitch_data_24

    .line 2287
    int-to-long v0, p1

    goto :goto_11

    .line 2274
    :sswitch_17
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 2277
    :sswitch_1a
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 2280
    :sswitch_1d
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 2283
    :sswitch_20
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 2271
    nop

    :sswitch_data_24
    .sparse-switch
        0xc6 -> :sswitch_17
        0xc7 -> :sswitch_1a
        0x1e8 -> :sswitch_20
        0x1e9 -> :sswitch_1d
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 2159
    const-string v6, "destination"

    invoke-direct {p0, v6}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2160
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    cmp-long v6, v0, v6

    if-nez v6, :cond_14

    .line 2162
    const-string v5, "hint"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2183
    :cond_13
    :goto_13
    return-object v5

    .line 2165
    :cond_14
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_30

    .line 2167
    const-string v6, "_data"

    invoke-direct {p0, v6}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2168
    .local v4, "localPath":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 2171
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 2174
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_30
    const-wide/16 v6, 0x6

    cmp-long v6, v0, v6

    if-nez v6, :cond_50

    .line 2175
    const-string v6, "local_filename"

    invoke-virtual {p0, v6}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/DownloadManager$SecCursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2176
    .restart local v4    # "localPath":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 2179
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 2182
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_50
    const-string v5, "_id"

    invoke-direct {p0, v5}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2183
    .local v2, "downloadId":J
    iget-object v5, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13
.end method

.method private getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 2249
    packed-switch p1, :pswitch_data_10

    .line 2260
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 2251
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 2254
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 2257
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 2249
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 2292
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 2296
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 2089
    # getter for: Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;
    invoke-static {}, Landroid/app/DownloadManager;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private translateLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 2187
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2189
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2232
    :goto_12
    return-wide v0

    .line 2192
    :cond_13
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2193
    const-string v0, "_id"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 2195
    :cond_22
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2196
    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 2198
    :cond_33
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2199
    const-string/jumbo v0, "status"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_12

    .line 2203
    :cond_4a
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2204
    const-string/jumbo v0, "status"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getReason(I)J

    move-result-wide v0

    goto :goto_12

    .line 2206
    :cond_60
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2207
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 2210
    :cond_6f
    const-string v0, "dd_contentSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2211
    const-string v0, "dd_contentSize"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 2213
    :cond_7e
    const-string v0, "downloadmethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2214
    const-string v0, "downloadmethod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 2216
    :cond_8d
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2217
    const-string/jumbo v0, "state"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12

    .line 2219
    :cond_9f
    const-string/jumbo v0, "storage_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2220
    const-string/jumbo v0, "storagetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12

    .line 2222
    :cond_b1
    const-string/jumbo v0, "range_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2223
    const-string/jumbo v0, "range_start"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12

    .line 2225
    :cond_c3
    const-string/jumbo v0, "range_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 2226
    const-string/jumbo v0, "range_end"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12

    .line 2228
    :cond_d5
    const-string/jumbo v0, "range_first_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2229
    const-string/jumbo v0, "range_first_end"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12

    .line 2231
    :cond_e7
    sget-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_f9

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2232
    :cond_f9
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_12
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2119
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2155
    :goto_e
    return-object v0

    .line 2121
    :cond_f
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2122
    const-string/jumbo v0, "title"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2124
    :cond_20
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2125
    const-string v0, "description"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2127
    :cond_2f
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2128
    const-string/jumbo v0, "uri"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2130
    :cond_40
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2131
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2133
    :cond_4f
    const-string v0, "local_filename"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2134
    const-string v0, "_data"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2139
    :cond_5e
    const-string v0, "dd_fileName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2140
    const-string v0, "dd_fileName"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2142
    :cond_6d
    const-string v0, "dd_vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2143
    const-string v0, "dd_vendor"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2145
    :cond_7c
    const-string v0, "dd_majorVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2146
    const-string v0, "dd_majorVersion"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2148
    :cond_8b
    const-string v0, "dd_primaryMimeType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2149
    const-string v0, "dd_primaryMimeType"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 2151
    :cond_9b
    const-string v0, "dd_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2152
    const-string v0, "dd_description"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 2154
    :cond_ab
    sget-boolean v0, Landroid/app/DownloadManager$SecCursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_bd

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2155
    :cond_bd
    invoke-direct {p0}, Landroid/app/DownloadManager$SecCursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 2080
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 2075
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 2044
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 6
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2049
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2050
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 2051
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2053
    :cond_20
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6
    .param p1, "columnIndex"    # I

    .prologue
    .line 2058
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 2059
    .local v0, "numColumns":I
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_32

    .line 2060
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2063
    :cond_32
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2068
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 2069
    .local v0, "returnColumns":[Ljava/lang/String;
    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v1

    # getter for: Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Landroid/app/DownloadManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2070
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 2085
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 2099
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 2104
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 2236
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 2244
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 2238
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 2241
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 2236
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method public getShort(I)S
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 2114
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x2

    .line 2302
    packed-switch p1, :pswitch_data_12

    .line 2338
    :pswitch_4
    const/16 v0, 0x10

    :goto_6
    :pswitch_6
    return v0

    .line 2304
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 2314
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_6

    .line 2319
    :pswitch_b
    const/16 v0, 0x8

    goto :goto_6

    .line 2323
    :pswitch_e
    const/16 v0, 0x40

    goto :goto_6

    .line 2302
    nop

    :pswitch_data_12
    .packed-switch 0xb5
        :pswitch_6
        :pswitch_e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_6
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
