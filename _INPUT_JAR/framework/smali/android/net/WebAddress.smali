.class public Landroid/net/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1bb

    const/4 v5, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_e

    .line 66
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 71
    :cond_e
    const-string v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 72
    const-string v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 73
    iput v5, p0, Landroid/net/WebAddress;->mPort:I

    .line 74
    const-string v3, "/"

    iput-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 75
    const-string v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 77
    sget-object v3, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "t":Ljava/lang/String;
    if-eqz v2, :cond_3b

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 82
    :cond_3b
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_44

    iput-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 84
    :cond_44
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_4d

    iput-object v2, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 86
    :cond_4d
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_60

    .line 90
    :try_start_5a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/WebAddress;->mPort:I
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_60} :catch_99

    .line 95
    :cond_60
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_78

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_a2

    .line 100
    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 113
    :cond_78
    :goto_78
    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v3, v6, :cond_c0

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 114
    const-string v3, "https"

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 121
    :cond_8a
    :goto_8a
    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const-string v3, "http"

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 122
    :cond_98
    return-void

    .line 91
    :catch_99
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Landroid/net/ParseException;

    const-string v4, "Bad port"

    invoke-direct {v3, v4}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_78

    .line 108
    .end local v2    # "t":Ljava/lang/String;
    :cond_b8
    new-instance v3, Landroid/net/ParseException;

    const-string v4, "Bad address"

    invoke-direct {v3, v4}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .restart local v2    # "t":Ljava/lang/String;
    :cond_c0
    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v3, v5, :cond_8a

    .line 116
    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 117
    iput v6, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_8a

    .line 119
    :cond_d1
    const/16 v3, 0x50

    iput v3, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_8a
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Landroid/net/WebAddress;->mPort:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "authInfo"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 156
    iput p1, p0, Landroid/net/WebAddress;->mPort:I

    .line 157
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 126
    const-string v1, ""

    .line 127
    .local v1, "port":Ljava/lang/String;
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v3, 0x1bb

    if-eq v2, v3, :cond_12

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_12
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3b

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 129
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_3b
    const-string v0, ""

    .line 132
    .local v0, "authInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5a

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
