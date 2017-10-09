.class final Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutValues"
.end annotation


# instance fields
.field alarmStatusAlpha:F

.field avatarScale:F

.field avatarX:F

.field avatarY:F

.field batteryLevelAlpha:F

.field batteryX:F

.field batteryY:F

.field clockY:F

.field dateCollapsedAlpha:F

.field dateExpandedAlpha:F

.field dateY:F

.field emergencyCallsOnlyAlpha:F

.field settingsAlpha:F

.field settingsRotation:F

.field settingsTranslation:F

.field signalClusterAlpha:F

.field timeScale:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>()V

    return-void
.end method


# virtual methods
.method public interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V
    .locals 8
    .param p1, "v1"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    .param p2, "v2"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    .param p3, "t"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 759
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    .line 760
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    .line 761
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    .line 762
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    .line 763
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    .line 764
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    .line 765
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    .line 766
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    .line 767
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    sub-float v4, v5, p3

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    .line 769
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, p3, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v0, v3, v7

    .line 770
    .local v0, "t1":F
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    .line 771
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    .line 774
    mul-float v3, v7, p3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 775
    .local v1, "t2":F
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    .line 777
    const v3, 0x3f333333    # 0.7f

    sub-float v3, p3, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    div-float v2, v3, v4

    .line 778
    .local v2, "t3":F
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    .line 779
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    .line 780
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    .line 781
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    .line 782
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    .line 783
    return-void
.end method
