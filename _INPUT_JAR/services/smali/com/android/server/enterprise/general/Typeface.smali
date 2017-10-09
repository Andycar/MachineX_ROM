.class public Lcom/android/server/enterprise/general/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# instance fields
.field private mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonospaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    const/4 v0, 0x0

    .line 151
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getSerifName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    const/4 v0, 0x0

    .line 175
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .registers 2
    .param p1, "typefaceFilename"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 129
    return-void
.end method
