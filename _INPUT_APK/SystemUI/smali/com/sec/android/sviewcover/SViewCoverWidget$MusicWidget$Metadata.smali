.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private duration:J

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .prologue
    .line 2915
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->duration:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    .param p1, "x1"    # J

    .prologue
    .line 2915
    iput-wide p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->duration:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2923
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->artist:Ljava/lang/String;

    .line 2924
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->trackTitle:Ljava/lang/String;

    .line 2925
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->albumTitle:Ljava/lang/String;

    .line 2926
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->bitmap:Landroid/graphics/Bitmap;

    .line 2927
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->duration:J

    .line 2928
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
