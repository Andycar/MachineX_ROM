.class public Landroid/util/secutil/SmartParsingData;
.super Ljava/lang/Object;
.source "SmartParsingData.java"


# instance fields
.field private dateInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emailInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originalData:Ljava/lang/String;

.field private phoneNumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remainData:Ljava/lang/String;

.field private timeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlInfo:Ljava/util/ArrayList;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateMillisInfo:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeMillisInfo:Ljava/util/ArrayList;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->originalData:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/util/secutil/SmartParsingData;->remainData:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    return-void
.end method

.method public deleteInfo(II)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    packed-switch p2, :pswitch_data_58

    move v0, v1

    .line 150
    :goto_6
    return v0

    .line 113
    :pswitch_7
    iget-object v2, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_15

    .line 114
    iget-object v1, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_15
    move v0, v1

    .line 117
    goto :goto_6

    .line 120
    :pswitch_17
    iget-object v2, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_25

    .line 121
    iget-object v1, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_25
    move v0, v1

    .line 124
    goto :goto_6

    .line 127
    :pswitch_27
    iget-object v2, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_35

    .line 128
    iget-object v1, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_35
    move v0, v1

    .line 131
    goto :goto_6

    .line 134
    :pswitch_37
    iget-object v2, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_45

    .line 135
    iget-object v1, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_45
    move v0, v1

    .line 138
    goto :goto_6

    .line 141
    :pswitch_47
    iget-object v2, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_55

    .line 142
    iget-object v1, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_55
    move v0, v1

    .line 145
    goto :goto_6

    .line 111
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_7
        :pswitch_17
        :pswitch_27
        :pswitch_37
        :pswitch_47
    .end packed-switch
.end method

.method public getCount(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_36

    .line 107
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 91
    :pswitch_5
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 93
    :pswitch_c
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 95
    :pswitch_13
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 97
    :pswitch_1a
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 99
    :pswitch_21
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 101
    :pswitch_28
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 103
    :pswitch_2f
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    .line 89
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_5
        :pswitch_c
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public getEndPosition(Ljava/lang/String;)I
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 181
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Landroid/util/secutil/SmartParsingData;->getOriginalData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 182
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, -0x1

    .line 183
    .local v0, "index":I
    :goto_2a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 184
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    goto :goto_2a

    .line 186
    :cond_37
    return v0
.end method

.method public getInfo(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_1a

    .line 85
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 69
    :pswitch_5
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 71
    :pswitch_8
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 73
    :pswitch_b
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 75
    :pswitch_e
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 77
    :pswitch_11
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 79
    :pswitch_14
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateMillisInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 81
    :pswitch_17
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeMillisInfo:Ljava/util/ArrayList;

    goto :goto_4

    .line 67
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public getOriginalData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->originalData:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->remainData:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition(Ljava/lang/String;)I
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 171
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Landroid/util/secutil/SmartParsingData;->getOriginalData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 172
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, -0x1

    .line 173
    .local v0, "index":I
    :goto_2a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 174
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    goto :goto_2a

    .line 176
    :cond_35
    return v0
.end method

.method public setInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 39
    packed-switch p2, :pswitch_data_2e

    .line 64
    :goto_3
    return-void

    .line 41
    :pswitch_4
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 44
    :pswitch_a
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :pswitch_10
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 50
    :pswitch_16
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->emailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :pswitch_1c
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    :pswitch_22
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 59
    :pswitch_28
    iget-object v0, p0, Landroid/util/secutil/SmartParsingData;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

.method public setOriginalData(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/util/secutil/SmartParsingData;->originalData:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setRemainData(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Landroid/util/secutil/SmartParsingData;->remainData:Ljava/lang/String;

    .line 159
    return-void
.end method
