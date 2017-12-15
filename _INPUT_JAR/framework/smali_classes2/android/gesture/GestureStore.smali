.class public Landroid/gesture/GestureStore;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final FILE_FORMAT_VERSION:S = 0x1s

.field public static final ORIENTATION_INVARIANT:I = 0x1

.field public static final ORIENTATION_SENSITIVE:I = 0x2

.field static final ORIENTATION_SENSITIVE_4:I = 0x4

.field static final ORIENTATION_SENSITIVE_8:I = 0x8

.field private static final PROFILE_LOADING_SAVING:Z = false

.field public static final SEQUENCE_INVARIANT:I = 0x1

.field public static final SEQUENCE_SENSITIVE:I = 0x2


# instance fields
.field private mChanged:Z

.field private mClassifier:Landroid/gesture/Learner;

.field private final mNamedGestures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientationStyle:I

.field private mSequenceType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 80
    iput v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 90
    new-instance v0, Landroid/gesture/InstanceLearner;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 91
    return-void
.end method

.method private readFormatV1(Ljava/io/DataInputStream;)V
    .registers 13
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 308
    .local v0, "classifier":Landroid/gesture/Learner;
    iget-object v8, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 309
    .local v8, "namedGestures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 312
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 314
    .local v1, "entriesCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    if-ge v5, v1, :cond_39

    .line 316
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 320
    .local v3, "gestureCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v4, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1c
    if-ge v6, v3, :cond_33

    .line 322
    invoke-static {p1}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    move-result-object v2

    .line 323
    .local v2, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget v9, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v10, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    invoke-static {v9, v10, v2, v7}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 328
    .end local v2    # "gesture":Landroid/gesture/Gesture;
    :cond_33
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 330
    .end local v3    # "gestureCount":I
    .end local v4    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v6    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_39
    return-void
.end method


# virtual methods
.method public addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 149
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 161
    :cond_8
    :goto_8
    return-void

    .line 152
    :cond_9
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_1d

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .restart local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    invoke-static {v2, v3, p2, p1}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    goto :goto_8
.end method

.method public getGestureEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 207
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-eqz v0, :cond_10

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method getLearner()Landroid/gesture/Learner;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    return-object v0
.end method

.method public getOrientationStyle()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    return v0
.end method

.method public getSequenceType()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    return v0
.end method

.method public hasChanged()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V

    .line 276
    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    instance-of v3, p1, Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_17

    .end local p1    # "stream":Ljava/io/InputStream;
    :goto_7
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2d

    .line 290
    .end local v0    # "in":Ljava/io/DataInputStream;
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    move-result v2

    .line 291
    .local v2, "versionNumber":S
    packed-switch v2, :pswitch_data_30

    .line 302
    :goto_11
    if-eqz p2, :cond_16

    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 304
    :cond_16
    return-void

    .line 281
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "versionNumber":S
    .restart local v0    # "in":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_17
    :try_start_17
    new-instance v3, Ljava/io/BufferedInputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2d

    move-object p1, v3

    goto :goto_7

    .line 293
    .end local v0    # "in":Ljava/io/DataInputStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "versionNumber":S
    :pswitch_21
    :try_start_21
    invoke-direct {p0, v1}, Landroid/gesture/GestureStore;->readFormatV1(Ljava/io/DataInputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_11

    .line 302
    .end local v2    # "versionNumber":S
    :catchall_25
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :goto_27
    if-eqz p2, :cond_2c

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_2c
    throw v3

    :catchall_2d
    move-exception v3

    goto :goto_27

    .line 291
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method

.method public recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget v1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v2, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v0

    .line 139
    .local v0, "instance":Landroid/gesture/Instance;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    iget-object v4, v0, Landroid/gesture/Instance;->vector:[F

    invoke-virtual {v1, v2, v3, v4}, Landroid/gesture/Learner;->classify(II[F)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {v0, p1}, Landroid/gesture/Learner;->removeInstances(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 197
    return-void
.end method

.method public removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 171
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_b

    .line 186
    :goto_a
    return-void

    .line 176
    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 180
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_19
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/gesture/Learner;->removeInstance(J)V

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    goto :goto_a
.end method

.method public save(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V

    .line 223
    return-void
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .registers 14
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v7, 0x0

    .line 234
    .local v7, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v6, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 236
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    new-instance v8, Ljava/io/DataOutputStream;

    instance-of v9, p1, Ljava/io/BufferedOutputStream;

    if-eqz v9, :cond_50

    .end local p1    # "stream":Ljava/io/OutputStream;
    :goto_9
    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_66

    .line 239
    .end local v7    # "out":Ljava/io/DataOutputStream;
    .local v8, "out":Ljava/io/DataOutputStream;
    const/4 v9, 0x1

    :try_start_d
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 245
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 246
    .local v2, "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 249
    .local v0, "count":I
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    if-ge v3, v0, :cond_1f

    .line 254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/gesture/Gesture;

    invoke-virtual {v9, v8}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_6d

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 236
    .end local v0    # "count":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v2    # "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    .restart local p1    # "stream":Ljava/io/OutputStream;
    :cond_50
    :try_start_50
    new-instance v9, Ljava/io/BufferedOutputStream;

    const v10, 0x8000

    invoke-direct {v9, p1, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_66

    move-object p1, v9

    goto :goto_9

    .line 258
    .end local v7    # "out":Ljava/io/DataOutputStream;
    .end local p1    # "stream":Ljava/io/OutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "out":Ljava/io/DataOutputStream;
    :cond_5a
    :try_start_5a
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 265
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/gesture/GestureStore;->mChanged:Z
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_6d

    .line 267
    if-eqz p2, :cond_65

    invoke-static {v8}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 269
    :cond_65
    return-void

    .line 267
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    :catchall_66
    move-exception v9

    :goto_67
    if-eqz p2, :cond_6c

    invoke-static {v7}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_6c
    throw v9

    .end local v7    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .restart local v8    # "out":Ljava/io/DataOutputStream;
    :catchall_6d
    move-exception v9

    move-object v7, v8

    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    goto :goto_67
.end method

.method public setOrientationStyle(I)V
    .registers 2
    .param p1, "style"    # I

    .prologue
    .line 100
    iput p1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 101
    return-void
.end method

.method public setSequenceType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 111
    iput p1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 112
    return-void
.end method
