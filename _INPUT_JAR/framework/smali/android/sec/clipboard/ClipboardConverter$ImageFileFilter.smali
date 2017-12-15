.class Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileFilter"
.end annotation


# instance fields
.field private final extensions:[Ljava/lang/String;

.field mFileHelper:Landroid/sec/clipboard/util/FileHelper;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->mFileHelper:Landroid/sec/clipboard/util/FileHelper;

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->extensions:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/ClipboardConverter$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/sec/clipboard/ClipboardConverter$1;

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 181
    if-nez p1, :cond_4

    .line 188
    :cond_3
    :goto_3
    return v4

    .line 182
    :cond_4
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->extensions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 183
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 184
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->mFileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 185
    const/4 v4, 0x1

    goto :goto_3

    .line 182
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method
