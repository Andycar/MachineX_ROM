.class public Lcom/android/server/SsrmService;
.super Ljava/lang/Object;
.source "SsrmService.java"


# static fields
.field public static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field public static final BASE_MODEL:Ljava/lang/String; = "jf"

.field public static final COMMON_GESTURE_WITH_FINGERHOVER:Z

.field public static final GMS_BUNDLING:Z = false

.field public static final SSRM_FILENAME:Ljava/lang/String; = "ssrm_jf_xx_static"

.field public static final SUPPORT_WEARABLE_HMT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SsrmService;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
