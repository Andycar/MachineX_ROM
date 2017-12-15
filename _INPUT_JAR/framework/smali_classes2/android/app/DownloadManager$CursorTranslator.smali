.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1874
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

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
    .line 1878
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1879
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1880
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1954
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_12

    .line 1957
    :cond_10
    int-to-long v0, p1

    .line 1987
    :goto_11
    return-wide v0

    .line 1960
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 1987
    const-wide/16 v0, 0x3e8

    goto :goto_11

    .line 1962
    :sswitch_18
    const-wide/16 v0, 0x3e9

    goto :goto_11

    .line 1966
    :sswitch_1b
    const-wide/16 v0, 0x3ea

    goto :goto_11

    .line 1969
    :sswitch_1e
    const-wide/16 v0, 0x3ec

    goto :goto_11

    .line 1972
    :sswitch_21
    const-wide/16 v0, 0x3ed

    goto :goto_11

    .line 1975
    :sswitch_24
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1978
    :sswitch_27
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1981
    :sswitch_2a
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1984
    :sswitch_2d
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1960
    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_24
        0xc7 -> :sswitch_27
        0x1e8 -> :sswitch_2d
        0x1e9 -> :sswitch_2a
        0x1ec -> :sswitch_18
        0x1ed -> :sswitch_1b
        0x1ee -> :sswitch_1b
        0x1ef -> :sswitch_1e
        0x1f1 -> :sswitch_21
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1905
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1906
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1c

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1c

    const-wide/16 v6, 0x6

    cmp-long v5, v0, v6

    if-nez v5, :cond_38

    .line 1909
    :cond_1c
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1910
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_2a

    .line 1911
    const/4 v5, 0x0

    .line 1918
    .end local v4    # "localPath":Ljava/lang/String;
    :goto_29
    return-object v5

    .line 1913
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_2a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    .line 1917
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_38
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1918
    .local v2, "downloadId":J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29
.end method

.method private getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1935
    packed-switch p1, :pswitch_data_12

    .line 1949
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1937
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1940
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1943
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1946
    :pswitch_f
    const-wide/16 v0, 0x5

    goto :goto_5

    .line 1935
    :pswitch_data_12
    .packed-switch 0xc1
        :pswitch_f
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1922
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1930
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1924
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 1927
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 1922
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x2

    .line 1992
    packed-switch p1, :pswitch_data_22

    .line 2021
    :pswitch_4
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_1e

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1994
    :pswitch_14
    const/4 v0, 0x1

    .line 2022
    :goto_15
    :pswitch_15
    return v0

    .line 2003
    :pswitch_16
    const/4 v0, 0x4

    goto :goto_15

    .line 2006
    :pswitch_18
    const/16 v0, 0x8

    goto :goto_15

    .line 2009
    :pswitch_1b
    const/16 v0, 0x40

    goto :goto_15

    .line 2022
    :cond_1e
    const/16 v0, 0x10

    goto :goto_15

    .line 1992
    nop

    :pswitch_data_22
    .packed-switch 0xb5
        :pswitch_15
        :pswitch_1b
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_4
        :pswitch_15
        :pswitch_4
        :pswitch_14
        :pswitch_4
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1884
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1889
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1890
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1894
    :goto_1c
    return-wide v0

    .line 1891
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1892
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1c

    .line 1894
    :cond_3b
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_1c
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1900
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
