.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOXScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I

.field private final mSupportKOX:Z


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 68
    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 71
    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 74
    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 78
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 80
    iput-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 85
    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 86
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/clipboard/scrap"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "rootPathScrap":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "scrap.info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "infoFileScrap":Ljava/io/File;
    new-instance v2, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v2, p0, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 96
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 99
    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .registers 5
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 135
    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 137
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 139
    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .registers 11
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 68
    iput-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 71
    iput-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 74
    iput-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 78
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 80
    iput-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 103
    iput p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 104
    iput p4, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 106
    new-instance v4, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v4, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 107
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 110
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/clipboard/scrap"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, "rootPathScrap":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "scrap.info"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v1, "infoFileScrap":Ljava/io/File;
    new-instance v4, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v4, p0, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 117
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    .line 119
    new-instance v4, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v4, p0, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 120
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 123
    new-instance v2, Ljava/io/File;

    const-string v4, "/knox/scrap"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "rootPathKNOXScrap":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "scrap.info"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v0, "infoFileKNOXScrap":Ljava/io/File;
    new-instance v4, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v4, p0, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 130
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V
    .registers 7
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;II)V

    .line 143
    iput-object p5, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 145
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 147
    :cond_11
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/data/file/FileManager;)I
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 63
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    return v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/data/file/FileManager;)Z
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    return v0
.end method

.method private deleteDirectoryContent(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 409
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 411
    :cond_1b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 413
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 179
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-eq v0, p1, :cond_13

    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v0, :cond_13

    .line 180
    iput p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 181
    if-nez p1, :cond_14

    .line 182
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET personal mode DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_13
    :goto_13
    return-void

    .line 184
    :cond_14
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET KNOX mode DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x63

    const/16 v4, 0x9

    const/4 v1, 0x1

    .line 345
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "ClipboardServiceEx"

    const-string v3, "add data..file system"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_12
    const/4 v0, 0x0

    .line 347
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_ad

    .line 348
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v4, :cond_5c

    .line 349
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 351
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 352
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 353
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 355
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-le v2, v5, :cond_5b

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ge v2, v6, :cond_5b

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 402
    :cond_5b
    :goto_5b
    return v1

    .line 362
    :cond_5c
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 364
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 365
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 366
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 368
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v2, :cond_86

    iget-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v2, :cond_86

    .line 369
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 370
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 373
    :cond_86
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-le v2, v5, :cond_5b

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ge v2, v6, :cond_5b

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto :goto_5b

    .line 381
    :cond_ad
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v4, :cond_cc

    .line 382
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 384
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 385
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 386
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_5b

    .line 391
    :cond_cc
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 393
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 394
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto/16 :goto_5b

    .line 402
    :cond_e6
    const/4 v1, 0x0

    goto/16 :goto_5b
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x1

    .line 307
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_35

    .line 308
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v3, :cond_21

    .line 309
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 310
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 311
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 336
    :goto_20
    return v1

    .line 315
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_21
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 316
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 317
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_20

    .line 322
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_35
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v3, :cond_4f

    .line 323
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 324
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 325
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_20

    .line 329
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_4f
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 330
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 331
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_20

    .line 336
    :cond_63
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_26

    .line 565
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->checkScrapMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 566
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 567
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    :goto_1a
    return-void

    .line 569
    :cond_1b
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 570
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    .line 573
    :cond_26
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->checkScrapMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 574
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 575
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a

    .line 577
    :cond_3d
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 578
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1a
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 611
    const/4 v0, -0x1

    if-le p1, v0, :cond_27

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 612
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_1a

    .line 613
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 618
    :goto_19
    return-object v0

    .line 615
    :cond_1a
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_19

    .line 618
    :cond_27
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getLastScrapDataIndex()I
    .registers 2

    .prologue
    .line 1038
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_b

    .line 1039
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1041
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a
.end method

.method public getScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 623
    const/4 v0, -0x1

    if-le p1, v0, :cond_27

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 624
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_1a

    .line 625
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 630
    :goto_19
    return-object v0

    .line 627
    :cond_1a
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_19

    .line 630
    :cond_27
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getScrapWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 652
    const/4 v0, -0x1

    if-le p1, v0, :cond_1f

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->scrapSize()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 653
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_16

    .line 654
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 659
    :goto_15
    return-object v0

    .line 656
    :cond_16
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_15

    .line 659
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 640
    const/4 v0, -0x1

    if-le p1, v0, :cond_1f

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 641
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_16

    .line 642
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 647
    :goto_15
    return-object v0

    .line 644
    :cond_16
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_15

    .line 647
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 156
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 157
    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_c
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_18

    .line 159
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 161
    :cond_18
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_24

    .line 162
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    .line 164
    :cond_24
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_30

    .line 165
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 167
    :cond_30
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_3c

    .line 168
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    .line 170
    :cond_3c
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 8
    .param p1, "index"    # I

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v4, :cond_68

    .line 423
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 426
    .restart local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v3, :cond_18

    .line 427
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v1

    .line 428
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_18

    .line 429
    invoke-direct {p0, v1}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)V

    .line 433
    .end local v1    # "dir":Ljava/io/File;
    :cond_18
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 435
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v4, :cond_32

    iget-boolean v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v4, :cond_32

    .line 436
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 437
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 455
    :cond_32
    :goto_32
    if-nez v3, :cond_76

    .line 456
    const/4 v4, 0x0

    .line 458
    :goto_35
    return-object v4

    .line 439
    :cond_36
    const/4 v0, 0x0

    .line 440
    .local v0, "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 441
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 442
    .restart local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_65

    if-eqz v3, :cond_65

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 443
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_32

    .line 440
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 451
    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "i":I
    :cond_68
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 452
    .restart local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_32

    .line 458
    :cond_76
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    goto :goto_35
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 5
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/16 v2, 0x9

    const/4 v0, 0x1

    .line 493
    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v1, :cond_29

    .line 494
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    if-ne v1, v2, :cond_1b

    .line 495
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 496
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 518
    :goto_1a
    return v0

    .line 500
    :cond_1b
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 501
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1a

    .line 506
    :cond_29
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    if-ne v1, v2, :cond_3d

    .line 507
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 508
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1a

    .line 512
    :cond_3d
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 513
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1a

    .line 518
    :cond_4b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public removeClipboardDB()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 195
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_1c

    .line 196
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_10

    .line 197
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 198
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 200
    :cond_10
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1b

    .line 201
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 202
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 214
    :cond_1b
    :goto_1b
    return-void

    .line 205
    :cond_1c
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_27

    .line 206
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 207
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 209
    :cond_27
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1b

    .line 210
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 211
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    goto :goto_1b
.end method

.method public removeKNOXData()V
    .registers 10

    .prologue
    .line 525
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    if-eqz v6, :cond_d1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v6, :cond_d1

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v6, :cond_d1

    iget-boolean v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v6, :cond_d1

    .line 526
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_32

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KNOX data will be removed. total size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v5, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_d1

    .line 529
    const/4 v3, 0x0

    .line 530
    .local v3, "refreash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_77

    .line 531
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 532
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/knox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 537
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 538
    .local v1, "dataSize":I
    if-lez v1, :cond_7e

    .line 539
    const/4 v3, 0x1

    .line 542
    :cond_7e
    add-int/lit8 v2, v1, -0x1

    :goto_80
    if-ltz v2, :cond_c5

    .line 543
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 544
    .local v4, "removedIndex":I
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b3

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_b3
    if-ltz v4, :cond_c2

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c2

    .line 546
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 542
    :cond_c2
    add-int/lit8 v2, v2, -0x1

    goto :goto_80

    .line 550
    .end local v4    # "removedIndex":I
    :cond_c5
    if-eqz v3, :cond_d1

    .line 551
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 552
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeKNOXClipFilder()V

    .line 556
    .end local v1    # "dataSize":I
    .end local v2    # "i":I
    .end local v3    # "refreash":Z
    .end local v5    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d1
    return-void
.end method

.method public removeScrap(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_1f

    .line 466
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 469
    .restart local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    .line 470
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_16

    .line 471
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)V

    .line 474
    :cond_16
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 480
    .end local v0    # "dir":Ljava/io/File;
    :goto_1b
    if-nez v1, :cond_2d

    .line 481
    const/4 v2, 0x0

    .line 483
    :goto_1e
    return-object v2

    .line 476
    :cond_1f
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 477
    .restart local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1b

    .line 483
    :cond_2d
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_1e
.end method

.method public scrapSize()I
    .registers 2

    .prologue
    .line 598
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_b

    .line 599
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 8
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/16 v4, 0x9

    .line 223
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_9c

    .line 224
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v4, :cond_77

    .line 225
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 226
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_35

    .line 227
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 229
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 234
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 235
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 236
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 253
    :cond_35
    :goto_35
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_70

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 256
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 257
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_99

    if-eqz v2, :cond_99

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 258
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 259
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_70

    .line 260
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 294
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_70
    :goto_70
    if-eqz v2, :cond_e6

    .line 295
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 297
    :goto_76
    return-object v3

    .line 240
    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_77
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 241
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 243
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 248
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 249
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_35

    .line 250
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_35

    .line 255
    .restart local v0    # "i":I
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 267
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_9c
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v4, :cond_c4

    .line 268
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 269
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 271
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 276
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOXScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 277
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_70

    .line 278
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOXScrap:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_70

    .line 281
    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_c4
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 282
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 284
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 287
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 288
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_70

    .line 289
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_70

    .line 297
    :cond_e6
    const/4 v3, 0x0

    goto :goto_76
.end method

.method public size()I
    .registers 2

    .prologue
    .line 589
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_b

    .line 590
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 592
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a
.end method
