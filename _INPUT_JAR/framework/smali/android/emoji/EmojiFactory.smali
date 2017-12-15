.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:J

.field private sCacheSize:I


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .registers 5
    .param p1, "nativeEmojiFactory"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    .line 72
    iput-wide p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    .line 73
    iput-object p3, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .registers 2
    .param p0, "x0"    # Landroid/emoji/EmojiFactory;

    .prologue
    .line 31
    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return v0
.end method

.method private native nativeDestructor(J)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(JI)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(JC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(J)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(J)I
.end method

.method private native nativeGetMinimumAndroidPua(J)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(J)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(JI)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(JI)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeDestructor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    return-void

    .line 82
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .registers 4
    .param p1, "vsp"    # I

    .prologue
    .line 178
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(JI)I

    move-result v0

    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vspString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 182
    if-nez p1, :cond_5

    .line 183
    const/4 v8, 0x0

    .line 202
    :goto_4
    return-object v8

    .line 185
    :cond_5
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(J)I

    move-result v5

    .line 186
    .local v5, "minVsp":I
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(J)I

    move-result v4

    .line 187
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 188
    .local v3, "len":I
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 190
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    .line 191
    .local v7, "new_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v3, :cond_3a

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 193
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_37

    if-gt v0, v4, :cond_37

    .line 194
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    .line 195
    .local v6, "newCodePoint":I
    if-lez v6, :cond_37

    .line 196
    aput v6, v1, v7

    .line 191
    .end local v6    # "newCodePoint":I
    :goto_2f
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 200
    :cond_37
    aput v0, v1, v7

    goto :goto_2f

    .line 202
    .end local v0    # "codePoint":I
    :cond_3a
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_4
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .registers 4
    .param p1, "sjis"    # C

    .prologue
    .line 157
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(JC)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "pua"    # I

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 103
    .local v0, "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_27

    .line 104
    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_25

    .line 109
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_44

    .line 119
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_25
    :goto_25
    monitor-exit p0

    return-object v1

    .line 113
    :cond_27
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 114
    .local v2, "tmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_47

    .line 115
    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_25

    .line 102
    .end local v0    # "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .end local v2    # "tmp":Landroid/graphics/Bitmap;
    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v2    # "tmp":Landroid/graphics/Bitmap;
    :cond_47
    move-object v1, v2

    .line 119
    goto :goto_25
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "vsp"    # I

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "sjis"    # C

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumAndroidPua()I
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .registers 3

    .prologue
    .line 262
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .registers 4
    .param p1, "pua"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(JI)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "puaString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 216
    if-nez p1, :cond_5

    .line 217
    const/4 v8, 0x0

    .line 236
    :goto_4
    return-object v8

    .line 219
    :cond_5
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    move-result v5

    .line 220
    .local v5, "minVsp":I
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    move-result v4

    .line 221
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 222
    .local v3, "len":I
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 224
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    .line 225
    .local v7, "new_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v3, :cond_3a

    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 227
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_37

    if-gt v0, v4, :cond_37

    .line 228
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    .line 229
    .local v6, "newCodePoint":I
    if-lez v6, :cond_37

    .line 230
    aput v6, v1, v7

    .line 225
    .end local v6    # "newCodePoint":I
    :goto_2f
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 234
    :cond_37
    aput v0, v1, v7

    goto :goto_2f

    .line 236
    .end local v0    # "codePoint":I
    :cond_3a
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_4
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .registers 4
    .param p1, "pua"    # I

    .prologue
    .line 167
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(JI)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
