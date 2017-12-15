.class public Landroid/sec/clipboard/ClipboardConverter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardConverter$1;,
        Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/sec/clipboard/ClipboardConverter;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardConverter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getFormatID(Landroid/content/ClipData;)I
    .registers 12
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v9, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 117
    .local v0, "count":I
    const/4 v1, 0x0

    .line 119
    .local v1, "formatID":I
    const/4 v5, 0x0

    .line 120
    .local v5, "text_count":I
    const/4 v2, 0x0

    .line 121
    .local v2, "html_count":I
    const/4 v6, 0x0

    .line 122
    .local v6, "uri_count":I
    const/4 v7, 0x0

    .line 123
    .local v7, "uri_image_count":I
    const/4 v4, 0x0

    .line 125
    .local v4, "intent_count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_c
    if-ge v3, v0, :cond_51

    .line 126
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 129
    :cond_1a
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_26

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 132
    :cond_26
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_32

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    :cond_32
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 137
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/ClipboardConverter;->isImagefile(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 125
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 143
    :cond_51
    if-ne v0, v9, :cond_67

    .line 144
    if-ne v2, v9, :cond_57

    .line 145
    const/4 v1, 0x4

    .line 162
    :cond_56
    :goto_56
    return v1

    .line 146
    :cond_57
    if-ne v5, v9, :cond_5b

    .line 147
    const/4 v1, 0x2

    goto :goto_56

    .line 148
    :cond_5b
    if-ne v7, v9, :cond_5f

    .line 149
    const/4 v1, 0x3

    goto :goto_56

    .line 150
    :cond_5f
    if-ne v4, v9, :cond_63

    .line 151
    const/4 v1, 0x6

    goto :goto_56

    .line 152
    :cond_63
    if-ne v6, v9, :cond_56

    .line 153
    const/4 v1, 0x5

    goto :goto_56

    .line 156
    :cond_67
    if-le v6, v9, :cond_6e

    if-le v0, v6, :cond_6e

    .line 157
    const/16 v1, 0x8

    goto :goto_56

    .line 159
    :cond_6e
    const/4 v1, 0x7

    goto :goto_56
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    if-nez v0, :cond_b

    .line 194
    new-instance v0, Landroid/sec/clipboard/ClipboardConverter;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardConverter;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    .line 197
    :cond_b
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method private getMultiUri(Landroid/content/ClipData;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 104
    .local v0, "count":I
    const/4 v3, 0x0

    .line 105
    .local v3, "uri_count":I
    const/4 v2, 0x0

    .line 106
    .local v2, "returnPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_c
    if-ge v1, v0, :cond_28

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 106
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 112
    :cond_28
    return-object v4
.end method

.method private isImagefile(Landroid/net/Uri;)Z
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 167
    if-eqz p1, :cond_22

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>(Landroid/sec/clipboard/ClipboardConverter$1;)V

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    .line 171
    .end local v0    # "file":Ljava/io/File;
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method


# virtual methods
.method public ClipDataToClipbaordData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 13
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v10, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v3, 0x0

    .line 43
    .local v3, "formatID":I
    if-eqz p1, :cond_b

    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    if-nez v9, :cond_d

    .line 44
    :cond_b
    const/4 v9, 0x0

    .line 98
    :goto_c
    return-object v9

    .line 47
    :cond_d
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getFormatID(Landroid/content/ClipData;)I

    move-result v3

    .line 49
    const/4 v9, 0x2

    if-ne v3, v9, :cond_34

    .line 50
    new-instance v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 51
    .local v7, "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2e

    .line 52
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 54
    :cond_2e
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setClipdata(Landroid/content/ClipData;)V

    .line 55
    move-object v2, v7

    .end local v7    # "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_32
    :goto_32
    move-object v9, v2

    .line 98
    goto :goto_c

    .line 56
    :cond_34
    const/4 v9, 0x3

    if-ne v3, v9, :cond_5e

    .line 57
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 58
    .local v1, "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_59

    .line 59
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 61
    :cond_59
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setClipdata(Landroid/content/ClipData;)V

    .line 62
    move-object v2, v1

    .line 63
    goto :goto_32

    .end local v1    # "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_5e
    const/4 v9, 0x4

    if-ne v3, v9, :cond_80

    .line 64
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 65
    .local v0, "HTMLdata":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7b

    .line 66
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 68
    :cond_7b
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->setClipdata(Landroid/content/ClipData;)V

    .line 69
    move-object v2, v0

    .line 70
    goto :goto_32

    .end local v0    # "HTMLdata":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_80
    const/4 v9, 0x6

    if-ne v3, v9, :cond_a2

    .line 71
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 72
    .local v4, "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_9d

    .line 73
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->SetIntent(Landroid/content/Intent;)Z

    .line 75
    :cond_9d
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setClipdata(Landroid/content/ClipData;)V

    .line 76
    move-object v2, v4

    .line 77
    goto :goto_32

    .end local v4    # "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_a2
    const/4 v9, 0x7

    if-ne v3, v9, :cond_bd

    .line 78
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 79
    .local v6, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getMultiUri(Landroid/content/ClipData;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 80
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getMultiUri(Landroid/content/ClipData;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->SetMultipleUri(Ljava/util/ArrayList;)Z

    .line 82
    :cond_b7
    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->setClipdata(Landroid/content/ClipData;)V

    .line 83
    move-object v2, v6

    .line 84
    goto/16 :goto_32

    .end local v6    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    :cond_bd
    const/16 v9, 0x8

    if-ne v3, v9, :cond_ce

    .line 85
    new-instance v5, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    invoke-direct {v5}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;-><init>()V

    .line 86
    .local v5, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    if-eqz p1, :cond_cb

    .line 87
    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->setClipdata(Landroid/content/ClipData;)V

    .line 89
    :cond_cb
    move-object v2, v5

    .line 90
    goto/16 :goto_32

    .end local v5    # "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    :cond_ce
    const/4 v9, 0x5

    if-ne v3, v9, :cond_32

    .line 91
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 92
    .local v8, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_eb

    .line 93
    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->SetUri(Landroid/net/Uri;)Z

    .line 95
    :cond_eb
    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setClipdata(Landroid/content/ClipData;)V

    .line 96
    move-object v2, v8

    goto/16 :goto_32
.end method

.method public ClipbaordDataToClipData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/content/ClipData;
    .registers 3
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "clipData":Landroid/content/ClipData;
    return-object v0
.end method
