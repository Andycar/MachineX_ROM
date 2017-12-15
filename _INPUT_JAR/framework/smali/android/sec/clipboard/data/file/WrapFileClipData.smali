.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mClip:Landroid/sec/clipboard/data/ClipboardData;

.field private mDir:Ljava/io/File;

.field private mIsProtected:Z

.field private mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_9

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 43
    :cond_9
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 45
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 47
    return-void
.end method

.method private loadData()Landroid/sec/clipboard/data/ClipboardData;
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method


# virtual methods
.method public getClipData()Landroid/sec/clipboard/data/ClipboardData;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_14

    .line 56
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 59
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v0, :cond_14

    .line 60
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 62
    :cond_14
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public load()Z
    .registers 6

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 132
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v3, :cond_2f

    .line 134
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    iget-boolean v4, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 137
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_30

    .line 138
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 139
    .local v0, "bitmap":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 141
    const/4 v1, 0x1

    .line 150
    .end local v0    # "bitmap":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_2f
    :goto_2f
    return v1

    .line 146
    :cond_30
    const/4 v1, 0x1

    goto :goto_2f
.end method

.method public setClipData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 74
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 75
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    .line 112
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 92
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 93
    return-void
.end method

.method public setProtectState(Z)V
    .registers 2
    .param p1, "isProtected"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    return-void
.end method
