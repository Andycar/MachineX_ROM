.class Ljava/net/URI$PartEncoder;
.super Llibcore/net/UriCodec;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartEncoder"
.end annotation


# instance fields
.field private final extraLegalCharacters:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraLegalCharacters"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    .line 169
    iput-object p1, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    const/4 v1, -0x1

    .line 173
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    const-string v0, ",;:$&+="

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2b

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method
