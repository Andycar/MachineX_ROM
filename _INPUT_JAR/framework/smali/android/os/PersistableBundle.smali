.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/PersistableBundle;

.field static final EMPTY_PARCEL:Landroid/os/Parcel;

.field private static final TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 43
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 44
    sget-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 164
    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Ljava/util/Map;)V

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 88
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2d

    .line 94
    new-instance v4, Landroid/os/PersistableBundle;

    check-cast v3, Ljava/util/Map;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v4, v3}, Landroid/os/PersistableBundle;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_e

    .line 95
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2d
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_e

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_e

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_e

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_e

    instance-of v4, v3, [I

    if-nez v4, :cond_e

    instance-of v4, v3, [J

    if-nez v4, :cond_e

    instance-of v4, v3, [D

    if-nez v4, :cond_e

    instance-of v4, v3, [Ljava/lang/String;

    if-nez v4, :cond_e

    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-nez v4, :cond_e

    if-eqz v3, :cond_e

    .line 100
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value in PersistableBundle key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_76
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 117
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 235
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 236
    .local v1, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "startTag":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 239
    .local v3, "tagName":[Ljava/lang/String;
    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    if-eq v0, v5, :cond_2c

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_2c

    .line 241
    :cond_1a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 242
    new-instance v4, Landroid/os/PersistableBundle;

    new-instance v5, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v5}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    invoke-static {p0, v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/PersistableBundle;-><init>(Ljava/util/Map;)V

    .line 246
    :goto_2b
    return-object v4

    :cond_2c
    sget-object v4, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    goto :goto_2b
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 152
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_e

    move-object v1, v2

    .line 160
    .end local v1    # "o":Ljava/lang/Object;
    :goto_d
    return-object v1

    .line 157
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_e
    :try_start_e
    check-cast v1, Landroid/os/PersistableBundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_11

    goto :goto_d

    .line 158
    :catch_11
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 160
    goto :goto_d
.end method

.method public putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/PersistableBundle;

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 139
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 194
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 195
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2f

    .line 252
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v1, Landroid/os/PersistableBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v1, :cond_f

    .line 253
    const-string v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4f

    .line 259
    :goto_d
    monitor-exit p0

    return-object v0

    .line 255
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 259
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_4f

    move-result-object v0

    goto :goto_d

    .line 251
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 226
    .local v0, "oldAllowFds":Z
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 230
    return-void

    .line 228
    :catchall_c
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v1
.end method

.method public writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 181
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1d

    .line 182
    const-string/jumbo v0, "pbundle_as_map"

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string/jumbo v0, "name"

    invoke-interface {p3, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    check-cast p1, Landroid/os/PersistableBundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 185
    const-string/jumbo v0, "pbundle_as_map"

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    return-void

    .line 187
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Object o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
