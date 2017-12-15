.class public Landroid/sec/clipboard/data/list/ClipboardDataIntent;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataIntent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public GetIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 154
    :goto_8
    return-object v1

    .line 150
    :catch_9
    move-exception v0

    .line 152
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 8
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 70
    .local v0, "Result":Z
    if-eqz v0, :cond_17

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_19

    :cond_17
    move v1, v0

    .line 112
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_18
    return v1

    .line 72
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_19
    packed-switch p1, :pswitch_data_42

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1c
    move v1, v0

    .line 112
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_18

    .line 75
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1e
    const/4 v0, 0x0

    .line 76
    goto :goto_1c

    .line 78
    :pswitch_20
    const/4 v0, 0x0

    .line 79
    goto :goto_1c

    .line 81
    :pswitch_22
    const/4 v0, 0x0

    .line 82
    goto :goto_1c

    .line 84
    :pswitch_24
    const/4 v0, 0x0

    .line 85
    goto :goto_1c

    .line 88
    :pswitch_26
    :try_start_26
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->SetIntent(Landroid/content/Intent;)Z
    :try_end_32
    .catch Ljava/net/URISyntaxException; {:try_start_26 .. :try_end_32} :catch_34

    move-result v0

    goto :goto_1c

    .line 89
    :catch_34
    move-exception v2

    .line 91
    .local v2, "e":Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 92
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1c

    .line 96
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3a
    const/4 v0, 0x0

    .line 97
    goto :goto_1c

    .line 101
    :pswitch_3c
    const/4 v0, 0x0

    .line 102
    goto :goto_1c

    .line 105
    :pswitch_3e
    const/4 v0, 0x0

    .line 106
    goto :goto_1c

    .line 108
    :pswitch_40
    const/4 v0, 0x0

    goto :goto_1c

    .line 72
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
    .end packed-switch
.end method

.method public SetIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 134
    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 135
    :cond_d
    const/4 v0, 0x0

    .line 138
    :goto_e
    return v0

    .line 137
    :cond_f
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_e
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 169
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "ClipboardServiceEx"

    const-string v5, "intent equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_c
    const/4 v0, 0x0

    .line 171
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move v1, v0

    .line 182
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 174
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-nez v4, :cond_1b

    move v1, v0

    .line 175
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 177
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 178
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    if-eqz v2, :cond_31

    .line 179
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_33

    move v0, v3

    :cond_31
    :goto_31
    move v1, v0

    .line 182
    .restart local v1    # "Result":I
    goto :goto_14

    .line 179
    .end local v1    # "Result":I
    :cond_33
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 223
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 225
    const/4 v1, 0x0

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    :try_start_f
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 229
    const-class v2, Landroid/content/ClipData;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 230
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 231
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_54

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClipboardDataIntent : readFormSource : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_55

    .line 237
    :cond_54
    :goto_54
    return-void

    .line 233
    :catch_55
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFormSource~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Intent class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    .line 194
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "ClipboardServiceEx"

    const-string v5, "Intent write to parcel"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    :try_start_10
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_16} :catch_45

    move-result-object v1

    .line 205
    :goto_17
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v4, :cond_31

    .line 206
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "text/vnd.android.intent"

    aput-object v5, v3, v4

    .line 207
    .local v3, "mimeType":[Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 208
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v4, Landroid/content/ClipData;

    const-string v5, "clipboarddragNdrop"

    invoke-direct {v4, v5, v3, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 211
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "mimeType":[Ljava/lang/String;
    :cond_31
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 212
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 213
    iget-boolean v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 214
    return-void

    .line 200
    :catch_45
    move-exception v0

    .line 202
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_17
.end method
