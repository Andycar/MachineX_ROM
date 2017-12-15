.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 11
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 71
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 72
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 74
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 76
    array-length v1, p5

    .line 77
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_30

    .line 82
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 84
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 86
    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_48

    .line 87
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 89
    :cond_48
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_9e

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1e
    if-eqz v0, :cond_97

    .line 182
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 185
    :goto_2e
    return-object v2

    .line 97
    .end local v1    # "type":I
    :sswitch_2f
    const-string/jumbo v0, "storage_id"

    .line 98
    const/4 v1, 0x6

    .line 99
    .restart local v1    # "type":I
    goto :goto_1e

    .line 101
    .end local v1    # "type":I
    :sswitch_34
    const-string v0, "format"

    .line 102
    const/4 v1, 0x4

    .line 103
    .restart local v1    # "type":I
    goto :goto_1e

    .line 106
    .end local v1    # "type":I
    :sswitch_38
    const/4 v1, 0x4

    .line 107
    .restart local v1    # "type":I
    goto :goto_1e

    .line 109
    .end local v1    # "type":I
    :sswitch_3a
    const-string v0, "_size"

    .line 110
    const/16 v1, 0x8

    .line 111
    .restart local v1    # "type":I
    goto :goto_1e

    .line 113
    .end local v1    # "type":I
    :sswitch_3f
    const-string v0, "_data"

    .line 114
    const v1, 0xffff

    .line 115
    .restart local v1    # "type":I
    goto :goto_1e

    .line 117
    .end local v1    # "type":I
    :sswitch_45
    const-string/jumbo v0, "title"

    .line 118
    const v1, 0xffff

    .line 119
    .restart local v1    # "type":I
    goto :goto_1e

    .line 121
    .end local v1    # "type":I
    :sswitch_4c
    const-string v0, "date_modified"

    .line 122
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_1e

    .line 125
    .end local v1    # "type":I
    :sswitch_52
    const-string v0, "date_added"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_1e

    .line 129
    .end local v1    # "type":I
    :sswitch_58
    const-string/jumbo v0, "year"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_1e

    .line 133
    .end local v1    # "type":I
    :sswitch_5f
    const-string/jumbo v0, "parent"

    .line 134
    const/4 v1, 0x6

    .line 135
    .restart local v1    # "type":I
    goto :goto_1e

    .line 138
    .end local v1    # "type":I
    :sswitch_64
    const-string/jumbo v0, "storage_id"

    .line 139
    const/16 v1, 0xa

    .line 140
    .restart local v1    # "type":I
    goto :goto_1e

    .line 142
    .end local v1    # "type":I
    :sswitch_6a
    const-string v0, "duration"

    .line 143
    const/4 v1, 0x6

    .line 144
    .restart local v1    # "type":I
    goto :goto_1e

    .line 146
    .end local v1    # "type":I
    :sswitch_6e
    const-string/jumbo v0, "track"

    .line 147
    const/4 v1, 0x4

    .line 148
    .restart local v1    # "type":I
    goto :goto_1e

    .line 150
    .end local v1    # "type":I
    :sswitch_73
    const-string v0, "_display_name"

    .line 151
    const v1, 0xffff

    .line 152
    .restart local v1    # "type":I
    goto :goto_1e

    .line 154
    .end local v1    # "type":I
    :sswitch_79
    const v1, 0xffff

    .line 155
    .restart local v1    # "type":I
    goto :goto_1e

    .line 157
    .end local v1    # "type":I
    :sswitch_7d
    const v1, 0xffff

    .line 158
    .restart local v1    # "type":I
    goto :goto_1e

    .line 160
    .end local v1    # "type":I
    :sswitch_81
    const-string v0, "album_artist"

    .line 161
    const v1, 0xffff

    .line 162
    .restart local v1    # "type":I
    goto :goto_1e

    .line 165
    .end local v1    # "type":I
    :sswitch_87
    const v1, 0xffff

    .line 166
    .restart local v1    # "type":I
    goto :goto_1e

    .line 168
    .end local v1    # "type":I
    :sswitch_8b
    const-string v0, "composer"

    .line 169
    const v1, 0xffff

    .line 170
    .restart local v1    # "type":I
    goto :goto_1e

    .line 172
    .end local v1    # "type":I
    :sswitch_91
    const-string v0, "description"

    .line 173
    const v1, 0xffff

    .line 174
    .restart local v1    # "type":I
    goto :goto_1e

    .line 185
    :cond_97
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_2e

    .line 95
    :sswitch_data_9e
    .sparse-switch
        0xdc01 -> :sswitch_2f
        0xdc02 -> :sswitch_34
        0xdc03 -> :sswitch_38
        0xdc04 -> :sswitch_3a
        0xdc07 -> :sswitch_3f
        0xdc09 -> :sswitch_4c
        0xdc0b -> :sswitch_5f
        0xdc41 -> :sswitch_64
        0xdc44 -> :sswitch_45
        0xdc46 -> :sswitch_79
        0xdc48 -> :sswitch_91
        0xdc4e -> :sswitch_52
        0xdc89 -> :sswitch_6a
        0xdc8b -> :sswitch_6e
        0xdc8c -> :sswitch_87
        0xdc96 -> :sswitch_8b
        0xdc99 -> :sswitch_58
        0xdc9a -> :sswitch_7d
        0xdc9b -> :sswitch_81
        0xdce0 -> :sswitch_73
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 275
    .local v1, "lastSlash":I
    if-ltz v1, :cond_b

    .line 276
    add-int/lit8 v2, v1, 0x1

    .line 278
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 279
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_17

    .line 280
    add-int/lit16 v0, v2, 0xff

    .line 282
    :cond_17
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 211
    const/4 v8, 0x0

    .line 213
    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 216
    if-eqz v8, :cond_3c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 217
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_44
    .catchall {:try_start_2 .. :try_end_35} :catchall_4c

    move-result-object v0

    .line 224
    if-eqz v8, :cond_3b

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    return-object v0

    .line 219
    :cond_3c
    :try_start_3c
    const-string v0, ""
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_44
    .catchall {:try_start_3c .. :try_end_3e} :catchall_4c

    .line 224
    if-eqz v8, :cond_3b

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 221
    :catch_44
    move-exception v9

    .line 224
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4a

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4a
    move-object v0, v10

    goto :goto_3b

    .line 224
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v0

    if-eqz v8, :cond_52

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .registers 13
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 231
    const/4 v8, 0x0

    .line 233
    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 234
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 237
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 238
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_3d
    .catchall {:try_start_2 .. :try_end_2e} :catchall_4d

    move-result-object v0

    .line 246
    if-eqz v8, :cond_34

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_34
    :goto_34
    return-object v0

    .line 240
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_35
    :try_start_35
    const-string v0, ""
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_3d
    .catchall {:try_start_35 .. :try_end_37} :catchall_4d

    .line 246
    if-eqz v8, :cond_34

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 242
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_3d
    move-exception v9

    .line 243
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4d

    .line 246
    if-eqz v8, :cond_4b

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4b
    move-object v0, v10

    goto :goto_34

    .line 246
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v0

    if-eqz v8, :cond_53

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .registers 13
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 253
    const/4 v8, 0x0

    .line 256
    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 259
    if-eqz v8, :cond_3d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 260
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_44
    .catchall {:try_start_2 .. :try_end_37} :catchall_4b

    .line 264
    if-eqz v8, :cond_3c

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_3c
    :goto_3c
    return-object v0

    .line 264
    :cond_3d
    if-eqz v8, :cond_42

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_42
    :goto_42
    move-object v0, v9

    .line 268
    goto :goto_3c

    .line 262
    :catch_44
    move-exception v0

    .line 264
    if-eqz v8, :cond_42

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 264
    :catchall_4b
    move-exception v0

    if-eqz v8, :cond_51

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 190
    const/4 v8, 0x0

    .line 193
    .local v8, "c":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 196
    if-eqz v8, :cond_38

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 197
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_40
    .catchall {:try_start_2 .. :try_end_31} :catchall_48

    move-result-object v0

    .line 204
    if-eqz v8, :cond_37

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_37
    :goto_37
    return-object v0

    .line 199
    :cond_38
    :try_start_38
    const-string v0, ""
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_40
    .catchall {:try_start_38 .. :try_end_3a} :catchall_48

    .line 204
    if-eqz v8, :cond_37

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .line 201
    :catch_40
    move-exception v9

    .line 204
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_46

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_46
    move-object v0, v10

    goto :goto_37

    .line 204
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v0

    if-eqz v8, :cond_4e

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .registers 36
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 287
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_f

    .line 290
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 442
    :cond_e
    :goto_e
    return-object v8

    .line 295
    :cond_f
    if-nez p2, :cond_65

    .line 296
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4f

    .line 298
    const/4 v6, 0x0

    .line 299
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 323
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_18
    const/16 v20, 0x0

    .line 326
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_29

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_29

    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_94

    .line 327
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 328
    if-nez v20, :cond_94

    .line 329
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_49} :catch_fe
    .catchall {:try_start_21 .. :try_end_49} :catchall_11e

    .line 441
    if-eqz v20, :cond_e

    .line 442
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 301
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_4f
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 302
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_62

    .line 303
    const-string/jumbo v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_18

    .line 305
    .end local v6    # "where":Ljava/lang/String;
    :cond_62
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_18

    .line 309
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_65
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_77

    .line 311
    const-string v6, "format=?"

    .line 312
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_18

    .line 314
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_77
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 315
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_91

    .line 316
    const-string/jumbo v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_18

    .line 318
    .end local v6    # "where":Ljava/lang/String;
    :cond_91
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_18

    .line 333
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_94
    if-nez v20, :cond_f0

    const/16 v22, 0x1

    .line 334
    .local v22, "count":I
    :goto_98
    :try_start_98
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 338
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    .local v27, "objectIndex":I
    :goto_a8
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_225

    .line 339
    if-eqz v20, :cond_bd

    .line 340
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 345
    :cond_bd
    const/16 v29, 0x0

    .local v29, "propertyIndex":I
    :goto_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_221

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v28, v2, v29

    .line 347
    .local v28, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v28

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 348
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 351
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_22c

    .line 424
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_1f5

    .line 425
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 345
    :goto_ed
    add-int/lit8 v29, v29, 0x1

    goto :goto_bf

    .line 333
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_f0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_98

    .line 354
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_f5
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_fd} :catch_fe
    .catchall {:try_start_98 .. :try_end_fd} :catchall_11e

    goto :goto_ed

    .line 438
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_fe
    move-exception v24

    .line 439
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_ff
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_11e

    .line 441
    if-eqz v20, :cond_e

    .line 442
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    .line 358
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_10e
    :try_start_10e
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 359
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_125

    .line 360
    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_11d} :catch_fe
    .catchall {:try_start_10e .. :try_end_11d} :catchall_11e

    goto :goto_ed

    .line 441
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    .end local v30    # "value":Ljava/lang/String;
    :catchall_11e
    move-exception v2

    if-eqz v20, :cond_124

    .line 442
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_124
    throw v2

    .line 362
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    .restart local v30    # "value":Ljava/lang/String;
    :cond_125
    const/16 v2, 0x2009

    :try_start_127
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_ed

    .line 367
    .end local v30    # "value":Ljava/lang/String;
    :sswitch_12b
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 369
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_13c

    .line 370
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 373
    :cond_13c
    if-nez v26, :cond_14e

    .line 374
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 375
    if-eqz v26, :cond_14e

    .line 376
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 379
    :cond_14e
    if-eqz v26, :cond_158

    .line 380
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_ed

    .line 382
    :cond_158
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_ed

    .line 388
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_15e
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ed

    .line 392
    :sswitch_170
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 393
    .local v31, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 394
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ed

    .line 398
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v31    # "year":I
    :sswitch_194
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 399
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 400
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 401
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ed

    .line 404
    .end local v12    # "puid":J
    :sswitch_1a8
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ed

    .line 408
    :sswitch_1bd
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ed

    .line 412
    :sswitch_1ce
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ed

    .line 416
    :sswitch_1df
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    .line 417
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_1ee

    .line 418
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ed

    .line 420
    :cond_1ee
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_ed

    .line 426
    .end local v25    # "genre":Ljava/lang/String;
    :cond_1f5
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_20d

    .line 427
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ed

    .line 429
    :cond_20d
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_21f} :catch_fe
    .catchall {:try_start_127 .. :try_end_21f} :catchall_11e

    goto/16 :goto_ed

    .line 338
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_221
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a8

    .line 441
    .end local v29    # "propertyIndex":I
    :cond_225
    if-eqz v20, :cond_e

    .line 442
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    .line 351
    :sswitch_data_22c
    .sparse-switch
        0xdc03 -> :sswitch_f5
        0xdc07 -> :sswitch_10e
        0xdc09 -> :sswitch_15e
        0xdc41 -> :sswitch_194
        0xdc44 -> :sswitch_12b
        0xdc46 -> :sswitch_1bd
        0xdc4e -> :sswitch_15e
        0xdc8b -> :sswitch_1a8
        0xdc8c -> :sswitch_1df
        0xdc99 -> :sswitch_170
        0xdc9a -> :sswitch_1ce
    .end sparse-switch
.end method
