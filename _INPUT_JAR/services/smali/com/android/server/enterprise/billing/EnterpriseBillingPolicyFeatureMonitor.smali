.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyFeatureMonitor.java"


# static fields
.field public static final FEATURE_NOT_ENABLED:Ljava/lang/String; = "Feature not enabled"

.field private static final IS_MULTI_SIM_SLOT_PRESENT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_7
    sput-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->IS_MULTI_SIM_SLOT_PRESENT:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnterpriseBillingFeatureSupported()Z
    .registers 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->IS_MULTI_SIM_SLOT_PRESENT:Z

    if-nez v0, :cond_6

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
