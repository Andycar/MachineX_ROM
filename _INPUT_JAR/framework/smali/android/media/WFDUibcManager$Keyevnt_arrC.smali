.class Landroid/media/WFDUibcManager$Keyevnt_arrC;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keyevnt_arrC"
.end annotation


# instance fields
.field private mKyCod:I

.field private mKyDwnTime:J

.field private mKyFlag:I

.field private mRepCnt:I

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .prologue
    .line 97
    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return p1
.end method

.method static synthetic access$1008(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .registers 3
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .prologue
    .line 97
    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .prologue
    .line 97
    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I

    return v0
.end method

.method static synthetic access$702(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .prologue
    .line 97
    iget-wide v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J
    .registers 4
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .prologue
    .line 97
    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return v0
.end method

.method static synthetic access$902(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return p1
.end method

.method static synthetic access$976(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .registers 3
    .param p0, "x0"    # Landroid/media/WFDUibcManager$Keyevnt_arrC;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return v0
.end method
