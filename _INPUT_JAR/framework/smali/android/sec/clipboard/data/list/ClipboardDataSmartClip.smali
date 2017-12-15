.class public Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataSmartClip.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBmpImgPath:Ljava/lang/String;

.field private mImgPath:Ljava/lang/String;

.field private mPlainString:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 48
    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mPlainString:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public GetSmartClip()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 76
    .local v0, "Result":Z
    if-nez v0, :cond_8

    move v1, v0

    .line 118
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_7
    return v1

    .line 78
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    packed-switch p1, :pswitch_data_32

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_b
    move v1, v0

    .line 118
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_7

    .line 81
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_d
    const/4 v0, 0x0

    .line 82
    goto :goto_b

    .line 84
    :pswitch_f
    const/4 v0, 0x0

    .line 85
    goto :goto_b

    .line 87
    :pswitch_11
    const/4 v0, 0x0

    .line 88
    goto :goto_b

    .line 92
    :pswitch_13
    const/4 v0, 0x0

    .line 93
    goto :goto_b

    .line 96
    :pswitch_15
    const/4 v0, 0x0

    .line 97
    goto :goto_b

    .line 101
    :pswitch_17
    const/4 v0, 0x0

    .line 102
    goto :goto_b

    .line 106
    :pswitch_19
    const/4 v0, 0x0

    .line 107
    goto :goto_b

    :pswitch_1b
    move-object v2, p2

    .line 110
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->setBmpImagePath(Ljava/lang/String;)V

    .line 111
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->SetSmartClip(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    move-result v0

    .line 112
    goto :goto_b

    .line 114
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_30
    const/4 v0, 0x0

    goto :goto_b

    .line 78
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_30
    .end packed-switch
.end method

.method public SetSmartClip(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .registers 3
    .param p1, "smartClip"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 128
    if-nez p1, :cond_4

    .line 129
    const/4 v0, 0x0

    .line 134
    :goto_3
    return v0

    .line 131
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->encodeRepositoryToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mPlainString:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public getBmpImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 227
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    .line 228
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    .line 229
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    .line 231
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 232
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 233
    return-void
.end method

.method public setBmpImagePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_a

    .line 153
    :cond_9
    :goto_9
    return-void

    .line 147
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 149
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    goto :goto_9

    .line 151
    :cond_18
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 203
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SmartClip write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_38

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 207
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v1, v2

    .line 208
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 209
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 212
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_38
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 214
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 216
    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 217
    return-void
.end method
