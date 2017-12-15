.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 2
    .param p0, "format"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_3c

    .line 104
    :goto_4
    return-object v0

    .line 55
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 56
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 59
    :pswitch_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 60
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 63
    :pswitch_11
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 64
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 68
    :pswitch_17
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 69
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 72
    :pswitch_1d
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 73
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 77
    :pswitch_23
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 78
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 83
    :pswitch_29
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 85
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 89
    :pswitch_2f
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;-><init>()V

    .line 91
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 95
    :pswitch_35
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;-><init>()V

    .line 97
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 52
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method
