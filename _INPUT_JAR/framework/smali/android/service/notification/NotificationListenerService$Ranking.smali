.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mRank:I

.field private mVisibilityOverride:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 721
    return-void
.end method

.method static synthetic access$700(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V
    .registers 6
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService$Ranking;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I

    .prologue
    .line 710
    invoke-direct/range {p0 .. p5}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZZI)V

    return-void
.end method

.method private populate(Ljava/lang/String;IZZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "isAmbient"    # Z
    .param p4, "matchesInterruptionFilter"    # Z
    .param p5, "visibilityOverride"    # I

    .prologue
    .line 773
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 774
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 775
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 776
    iput-boolean p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 777
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 778
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .registers 2

    .prologue
    .line 737
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getVisibilityOverride()I
    .registers 2

    .prologue
    .line 756
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .registers 2

    .prologue
    .line 745
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .registers 2

    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method
