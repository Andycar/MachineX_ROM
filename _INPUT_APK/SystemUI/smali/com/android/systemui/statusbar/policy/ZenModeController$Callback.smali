.class public Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 38
    return-void
.end method

.method public onEffectsSupressorChanged()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 37
    return-void
.end method

.method public onNextAlarmChanged()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 36
    return-void
.end method
