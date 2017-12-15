.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataMultipleUri.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public GetMultipleUri()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 158
    const/4 v2, 0x0

    .line 166
    :cond_5
    return-object v2

    .line 160
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "multiUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_5

    .line 163
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 68
    .local v0, "Result":Z
    if-eqz v0, :cond_f

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_f
    move v1, v0

    .line 103
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_10
    return v1

    .line 71
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_11
    packed-switch p1, :pswitch_data_30

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_14
    move v1, v0

    .line 103
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_10

    .line 73
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_16
    const/4 v0, 0x0

    .line 74
    goto :goto_14

    .line 76
    :pswitch_18
    const/4 v0, 0x0

    .line 77
    goto :goto_14

    .line 79
    :pswitch_1a
    const/4 v0, 0x0

    .line 80
    goto :goto_14

    .line 82
    :pswitch_1c
    const/4 v0, 0x0

    .line 83
    goto :goto_14

    .line 85
    :pswitch_1e
    const/4 v0, 0x0

    .line 86
    goto :goto_14

    .line 88
    :pswitch_20
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->SetMultipleUriInternal(Ljava/util/ArrayList;)Z

    move-result v0

    .line 89
    goto :goto_14

    .line 92
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_29
    const/4 v0, 0x0

    .line 93
    goto :goto_14

    .line 96
    :pswitch_2b
    const/4 v0, 0x0

    .line 97
    goto :goto_14

    .line 99
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_14

    .line 71
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
    .end packed-switch
.end method

.method public SetMultipleUri(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_4

    .line 123
    const/4 v3, 0x0

    .line 130
    :goto_3
    return v3

    .line 124
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_24

    .line 127
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 128
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 130
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_24
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public SetMultipleUriInternal(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 141
    const/4 v3, 0x0

    .line 148
    :goto_3
    return v3

    .line 142
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 143
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 145
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "uri":Ljava/lang/String;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 148
    .end local v2    # "uri":Ljava/lang/String;
    :cond_20
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 182
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "multiple uri equals"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_c
    const/4 v0, 0x0

    .line 184
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v0

    .line 195
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 187
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    if-nez v3, :cond_1b

    move v1, v0

    .line 188
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 190
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 192
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    if-eqz v2, :cond_35

    .line 193
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_37

    const/4 v0, 0x1

    :cond_35
    :goto_35
    move v1, v0

    .line 195
    .restart local v1    # "Result":I
    goto :goto_14

    .line 193
    .end local v1    # "Result":I
    :cond_37
    const/4 v0, 0x0

    goto :goto_35
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 235
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 236
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this MultipleUri class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2e

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 206
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 207
    const-string v3, "ClipboardServiceEx"

    const-string v4, "Multiple Uri write to parcel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v3, :cond_5f

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5f

    .line 211
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v2, v5

    .line 212
    .local v2, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 213
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v3, Landroid/content/ClipData;

    const-string v4, "clipboarddragNdrop"

    invoke-direct {v3, v4, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 215
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3e
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5f

    .line 216
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 220
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeType":[Ljava/lang/String;
    :cond_5f
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 221
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 222
    iget-boolean v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
