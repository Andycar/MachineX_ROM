.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataMultipleType.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 46
    return-void
.end method

.method private SetMultipleType(Landroid/content/ClipData;)Z
    .registers 3
    .param p1, "clipdata"    # Landroid/content/ClipData;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 98
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 58
    .local v0, "Result":Z
    if-eqz v0, :cond_13

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_15

    :cond_13
    move v1, v0

    .line 92
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_14
    return v1

    .line 61
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_15
    packed-switch p1, :pswitch_data_34

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_18
    move v1, v0

    .line 92
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_14

    .line 63
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1a
    const/4 v0, 0x0

    .line 64
    goto :goto_18

    .line 66
    :pswitch_1c
    const/4 v0, 0x0

    .line 67
    goto :goto_18

    .line 69
    :pswitch_1e
    const/4 v0, 0x0

    .line 70
    goto :goto_18

    .line 72
    :pswitch_20
    const/4 v0, 0x0

    .line 73
    goto :goto_18

    .line 75
    :pswitch_22
    const/4 v0, 0x0

    .line 76
    goto :goto_18

    .line 78
    :pswitch_24
    const/4 v0, 0x0

    .line 79
    goto :goto_18

    .line 81
    :pswitch_26
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-direct {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->SetMultipleType(Landroid/content/ClipData;)Z

    move-result v0

    .line 82
    goto :goto_18

    .line 85
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_2f
    const/4 v0, 0x0

    .line 86
    goto :goto_18

    .line 88
    :pswitch_31
    const/4 v0, 0x0

    goto :goto_18

    .line 61
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_2f
        :pswitch_31
    .end packed-switch
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 107
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 116
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "multiple type equals"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_c
    const/4 v0, 0x0

    .line 118
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v0

    .line 128
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 121
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    if-nez v3, :cond_1b

    move v1, v0

    .line 122
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 124
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .line 126
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 128
    .restart local v1    # "Result":I
    goto :goto_14
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 147
    :try_start_0
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 148
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 149
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_2b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ClipboardDataMultipleType : readFormSource : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 156
    :cond_2b
    :goto_2b
    return-void

    .line 151
    :catch_2c
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFormSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 134
    const-string v0, "ClipboardServiceEx"

    const-string v1, "Multiple Type write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v0, :cond_1c

    .line 137
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 139
    :cond_1c
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 140
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 141
    return-void
.end method
